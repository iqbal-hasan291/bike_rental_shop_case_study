# Bike Rental Shop - SQL Case Study

## Overview
This SQL case study focuses on analyzing a **Bike Rental Shop** business dataset to help the shop owner, *Emily*, make data-driven decisions.  
The goal was to extract valuable insights about bike inventory, rental performance, membership revenue, and customer behavior using SQL queries.

---

## Problem Statement
Emily, the owner of a local bike rental shop, wants to improve her business operations and customer engagement.  
She has a database that stores data about:
- Customers
- Bikes
- Rentals
- Membership types
- Membership purchases  

She hired a data analyst (me) to answer key business questions, such as:
- How many bikes does the shop own by category?  
- What’s the monthly rental revenue trend?  
- Which membership types generate the most revenue?  
- How can customers be segmented based on rental activity?

---

##  Tools & Technologies
- **Database:** MySQL  
- **Language:** SQL (Structured Query Language)  
- **Environment:** MySQL Workbench 
- **Techniques Used:**  
  - Joins (INNER / LEFT)  
  - Aggregations (`SUM`, `COUNT`, `AVG`)  
  - CTEs (Common Table Expressions)  
  - Conditional Logic (`CASE`, `COALESCE`, `HAVING`)  
  - Date Functions (`YEAR()`, `MONTH()`)  

---

## ⚙️ Workflow

1. **Data Understanding**  
   - Analyzed 5 core tables: `customer`, `bike`, `rental`, `membership`, and `membership_type`.  
   - Identified relationships and key metrics.

2. **Business Question Breakdown**  
   - Converted business requirements into SQL queries.  
   - Created reusable and readable query structures.  

3. **Query Execution**  
   - Wrote and optimized SQL queries for:  
     - Bike inventory analysis  
     - Rental and membership revenue tracking  
     - Customer segmentation  

4. **Data Validation**  
   - Checked for missing data, null values, and logical consistency.  
   - Ensured proper grouping and joins across tables.

5. **Insights & Visualization (Optional)**  
   - Results exported for further use in Power BI or Excel if required.  

---

##  Key Findings & Insights

| Focus Area | Insight |
|-------------|----------|
| **Bike Inventory** | Certain categories (e.g., mountain bikes, electric bikes) dominate inventory and rentals. |
| **Revenue Trends** | Rental revenue fluctuates by month; strong potential for seasonal offers. |
| **Membership Revenue** | Memberships significantly contribute to recurring revenue; specific types perform better. |
| **Winter Offer Simulation** | Applying discounts can boost utilization while maintaining profitability. |
| **Customer Segmentation** | Majority of customers rent fewer than 5 times; a small group (>10 rentals) represents loyal customers. |

---

##  Conclusion

This case study demonstrates how **SQL analytics** can uncover actionable business insights from operational data.  
By leveraging structured queries, Emily can now:
- Optimize her pricing and promotions.  
- Manage inventory more efficiently.  
- Strengthen customer loyalty through targeted membership offers.  

Overall, this project highlights the value of **data-driven decision-making** for small retail and rental businesses.

---

