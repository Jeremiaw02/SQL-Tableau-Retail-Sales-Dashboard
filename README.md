# SQL-Tableau-Retail-Sales-Dashboard
Cleaned and transformed retail transaction data in MySQL, built monthly sales and customer demographic summaries, and visualized sales trends, category performance, and KPIs in an interactive Tableau dashboard.

# Executive Summary
This project demonstrates end-to-end data analytics skills by transforming raw retail sales data into actionable insights. Using SQL (MySQL) for data cleaning, transformation, and aggregation, and Tableau for interactive dashboards, I built a business-ready visualization that highlights sales trends, customer demographics, and product category performance.

# Business Problem
Retailers collect large amounts of sales data, but it’s often underutilized. The main challenges were:

- Tracking monthly sales trends to identify growth or decline. 

- Determining top-performing product categories.

- Understanding how customer demographics (gender and age) drive sales.

- Presenting findings in a clear, interactive dashboard for decision-making.

# Methodology
## 1. Data Cleaning & Transformation (SQL)

- Parsed inconsistent date formats into a uniform structure.

- Converted sales values from string format with $ and , into numeric fields.

- Built aggregate tables for monthly sales by product category.

- Created views for demographic analysis (gender and age groups).

## 2. Data Analysis (SQL Queries)

- Computed sales by month and category.

- Grouped customers by gender and age group to analyze spending.

- Designed KPI queries for total sales, total orders, and customer counts.

## 3. Data Visualization (Tableau Dashboard)

- Line Chart: Monthly sales trends by product category.
<img width="1045" height="699" alt="Screenshot 2025-09-10 at 4 12 24 AM" src="https://github.com/user-attachments/assets/35c2bf7f-6bc9-4e5d-8bce-96e856f161a0" />


- Stacked Bar: Category sales share per month.
<img width="972" height="698" alt="Screenshot 2025-09-10 at 4 13 13 AM" src="https://github.com/user-attachments/assets/80688795-ea00-4c5f-8a6e-c27a59de4d63" />


- Bar Chart: Sales by gender.
<img width="969" height="692" alt="Screenshot 2025-09-10 at 4 13 30 AM" src="https://github.com/user-attachments/assets/a1d87492-8cf1-4132-8383-71855249d798" />


- Pie Chart: Sales by age group.
<img width="691" height="516" alt="Screenshot 2025-09-10 at 4 14 07 AM" src="https://github.com/user-attachments/assets/addc9794-f92b-4805-b031-2fa4cdef1ee2" />


- KPI Cards: Total sales and total orders.
<img width="115" height="135" alt="Screenshot 2025-09-10 at 4 17 25 AM" src="https://github.com/user-attachments/assets/f49ae1e0-18f3-42fa-8cfd-3cadb0cbf971" />


# Skills & Tools Used

- SQL (MySQL Workbench) → Data cleaning, transformation, aggregation

- Tableau → Interactive dashboard and data storytelling

- Data Analysis → Trend analysis, demographic segmentation, KPI design

- Business Intelligence (BI) → Translating raw data into actionable insights

# Results & Insights

- Monthly Trends: Clear fluctuations across product categories, with Electronics leading overall sales.

- Category Performance: Electronics dominated sales share; Clothing was variable; Beauty showed steady, smaller contribution.

- Gender Split: Females slightly outspent males overall, though transaction counts were nearly equal.

- Age Groups: Customers aged 26–35 spent the most, followed by the 51+ group.

# Business Recommendations

- Prioritize Electronics: Continue promotions and bundling strategies to leverage its dominance.

- Target high-value demographics: Focus marketing on 26–35 and 51+ age groups for maximum sales.

- Balanced gender strategies: Both genders buy at similar rates, advertising campaigns should remain inclusive.

- Expand Beauty sales: Introduce loyalty or subscription models to grow this steady but smaller category.

# Next Steps

- Perform RFM analysis (Recency, Frequency, Monetary) to identify high-value customer segments.

- Add predictive analytics (using Python or Tableau forecasting) to project future category sales.

- Integrate data pipelines for automated refreshes into Tableau Server/Public.

- Expand demographics to include location, income, or customer tenure for richer segmentation.

- Build a dashboard story view in Tableau to walk stakeholders through insights step-by-step.
