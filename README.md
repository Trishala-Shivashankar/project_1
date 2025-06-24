Project: E-commerce Return Rate Reduction Analysis
Tools Used
Python (Jupyter Notebook)
Power BI
MySQL Workbench

Project Workflow Summary
Input Dataset: ecommerce_return_enhanced.csv
(Preprocessed customer order and return data with added features like Product_Margin, Return_Label, Return_Probability, etc.)

Step 1: Exploratory Data Analysis (Python)
Analyzed return rates by product category, region, shipping method, and marketing channel.
Visualized behavioral trends using seaborn and matplotlib.

Step 2: Return Prediction Model (Python)
Built a logistic regression model to predict Return_Probability.
Output: high_return_risk_products.csv
(List of products with return probability > 0.5)

Step 3: SQL Analytics (MySQL)
Wrote queries to extract:
Return % by region, category, channel
High-return customers

Step 4: Power BI Dashboard
Built an interactive dashboard with:
KPI cards (Total Orders, Avg Return Rate, High Risk Products)
Return trends by category and region
Filters for Region, Category, Channel, Month
Risk vs Margin scatter plot for actionable insights

Goal
To help the e-commerce business:
Identify patterns in customer returns
Predict high-risk orders
Make data-driven decisions to reduce return rates
