The Taste of the World Cafe: New Menu Performance Analysis
A data analysis project using SQL to evaluate the performance of a new menu at "The Taste of the World Cafe" and gain insights into customer behavior.


Project Overview

This project focuses on a core business problem: understanding how a new menu launch has impacted a restaurant's sales and customer engagement. 

The analysis provides a comprehensive view of:

The performance of individual menu items and categories.

The preferences of top-selling and most loyal customers.

Overall sales trends since the new menu was introduced.

The insights from this project will help the cafe's management make informed decisions about menu optimization, marketing strategies, and inventory management.

Dataset

The analysis utilizes two primary tables:

menu_items:

menu_ID (INTEGER): Unique identifier for each menu item.

item_name (VARCHAR): The name of the menu item. 

category (VARCHAR): The category of the item. 

price (DECIMAL): The price of the item.

order_details:

order_details_ID (INTEGER): Unique identifier for each line item in an order.

order_ID (INTEGER): Unique identifier for a customer order.

order_date (DATE): The date the order was placed.

item_id (INTEGER): A foreign key linking to menu_items.

Analysis Questions

The SQL queries in this repository are designed to answer the following business questions:

Menu Performance and Popularity:

What are the top 5 best-selling and least-selling menu items by quantity?

Which menu categories generate the most revenue?

Customer Insights and Preferences:

Who are the top 5 customers based on the total number of orders?

What are the most popular menu items among the top customers?


Key Insights
Italian dishes are the clear front-runner. The Italian category has the highest total sales volume among all menu categories.

Top customers are loyal to Italian cuisine. Analysis of top customers' order history shows a strong preference for items from the Italian category, confirming its popularity among the most valuable patrons.

Analysis Report
The analysis of the new menu data reveals a significant finding: the Italian category is the most successful menu offering since the start of the year.

High Sales Volume: SQL queries revealed that dishes under the 'Italian' category accounted for the largest portion of total items sold. This indicates widespread appeal and popularity across the entire customer base.

Top Customer Preference: Digging deeper into the order history of our most frequent and highest-spending customers, a clear trend emerged. The top patrons consistently ordered Italian dishes. This insight is crucial as it shows that the Italian menu items not only sell well but are also a key driver of customer loyalty and repeat business.

Recommendations:

Promotional Focus: The cafe should consider promoting Italian dishes more heavily, perhaps through "Italian Night" specials or bundled offers. 

Menu Expansion: Given the success of the category, management could explore adding new Italian dishes to the menu to capitalize on this strong customer preference.

Customer Loyalty: Use this data to create targeted promotions for top customers, offering them exclusive deals on their favorite Italian items to further strengthen their loyalty.



Email: ologunoluwapelumi062@gmail.com

Project:  Link:https://github.com/Oluwapeluminitoto/Resturant_db.git

LinkedIn : https://www.linkedin.com/in/ologun-oluwapelumi-32851521a
