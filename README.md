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

- Stacked Bar: Category sales share per month.

- Bar Chart: Sales by gender.

- Pie Chart: Sales by age group.

- KPI Cards: Total sales, total orders, total customers.

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
