-- Initialize schema
USE retail_sales;
-- 1) One clean source view
--    - Parses(verifies syntax) dates (supports 'YYYY-MM-DD' OR 'MM/DD/YYYY')
--    - Cleans money from the text column `Total Amount` ($, ,)
--    - Standardizes month key 'YYYY-MM'
-- Using a view because it is more Tableau-friendly.
CREATE OR REPLACE VIEW v_sales_clean AS
SELECT
  `Transaction ID`                                   AS txn_id,
  -- Try ISO format first to check, then US format 
  COALESCE(
    STR_TO_DATE(`Date`, '%Y-%m-%d'),
    STR_TO_DATE(`Date`, '%m/%d/%Y')
  )                                                  AS order_date,
  DATE_FORMAT(
    COALESCE(
      STR_TO_DATE(`Date`, '%Y-%m-%d'),
      STR_TO_DATE(`Date`, '%m/%d/%Y')
    ),
    '%Y-%m'
  )                                                  AS order_month,
  `Customer ID`                                      AS customer_id,
  `Gender`                                           AS gender,
  `Age`                                              AS age,
  `Product Category`                                 AS product_category,
  Quantity                                           AS qty,
  -- Change to a numeric amount from the text field
  CAST(REPLACE(REPLACE(`Total Amount`, '$',''), ',','') AS DECIMAL(12,2))
                                                     AS amount
FROM retail_sales_dataset
WHERE `Date` IS NOT NULL;

-- 2) Monthly x Category summary table
--  Primary key prevents duplicates
CREATE TABLE IF NOT EXISTS monthly_sales_summary (
  Month            CHAR(7)        NOT NULL,          -- 'YYYY-MM'
  Product_Category VARCHAR(100)   NOT NULL,
  Monthly_Amount   DECIMAL(12,2)  NOT NULL,
  PRIMARY KEY (Month, Product_Category)
);

-- Monthly totals by product category 
INSERT INTO monthly_sales_summary (Month, Product_Category, Monthly_Amount)
SELECT * FROM (
  SELECT
    order_month                          AS Month,
    product_category                     AS Product_Category,
    ROUND(SUM(amount), 2)                AS Monthly_Amount
  FROM v_sales_clean
  GROUP BY order_month, product_category
) AS new_data
ON DUPLICATE KEY UPDATE
  Monthly_Amount = new_data.Monthly_Amount;

-- 3a) Gender summary
CREATE OR REPLACE VIEW gender_sales AS
SELECT
  gender,
  ROUND(SUM(amount), 2) AS total_sales,
  COUNT(*)              AS total_orders
FROM v_sales_clean
GROUP BY gender
ORDER BY total_sales DESC;

-- 3b) Age-group summary
CREATE OR REPLACE VIEW age_sales AS
SELECT
  CASE
    WHEN age IS NULL         THEN 'Unknown'
    WHEN age < 26            THEN '18–25'
    WHEN age BETWEEN 26 AND 35 THEN '26–35'
    WHEN age BETWEEN 36 AND 50 THEN '36–50'
    WHEN age >= 51           THEN '51+'
    ELSE 'Unknown'
  END                          AS age_group,
  ROUND(SUM(amount), 2)        AS total_sales,
  COUNT(*)                     AS total_orders
FROM v_sales_clean
GROUP BY age_group
ORDER BY total_sales DESC;

-- 4) Quick validation 
SELECT * FROM monthly_sales_summary ORDER BY Month, Product_Category;

-- Gender breakdown preview
SELECT * FROM gender_sales;

-- Age-group breakdown preview
SELECT * FROM age_sales;
