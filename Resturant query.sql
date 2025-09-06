select * from menu_items;
select * from order_details;

# what is the least and most expensive items on the menu
select * from menu_items
order by price
limit 1;
select * from menu_items
order by price desc
limit 1;

# How many Italian dishes are on the menu
select count(*) from menu_items
where category = 'italian';

# what is the least and expensive italian dishes on the menu
select * from menu_items
where category = 'italian'
order by price desc
limit 1;

select * from menu_items
where category = 'italian'
order by price asc
limit 1;

# how many dishes are in each category
select category, count(menu_item_id) number_of_dishes from menu_items
group by category;

# average dish price within each category
select category, avg(price) Avg_price from menu_items
group by category;

# view order_details table
select * from order_details;

# what is the date range of the table
select min(order_date), max(order_date) from order_details;

# how many orders were made within this date range
select count(distinct order_id) number_of_orders from order_details;

# how many items were ordered within this date rang?
select count(item_id) number_of_itemorders from order_details;

# which orders had the most number of items?
select order_id, count(item_id) number_of_items from order_details
group by order_id
order by count(item_id) desc;

# how many orders had more than 12 items
select count(*) number_of_items from 
(select order_id, count(item_id) number_of_items from order_details
group by order_id
having count(item_id) > 12) number_of_items;

-- ANALYZING CUSTOMER BEHAVIOUR
# Combine the menu items and order details tables into a single table
select * from order_details
left join menu_items
on order_details.item_id = menu_items.menu_item_id;

# what were the least and most ordered items? what category were they insert
select item_name, category, count(order_details_id) Number_of_ordered_items from order_details
left join menu_items
on order_details.item_id = menu_items.menu_item_id
group by item_name, category
order by count(order_details_id) desc
limit 1;

select item_name, category, count(order_details_id) Number_of_ordered_items from order_details
left join menu_items
on order_details.item_id = menu_items.menu_item_id
group by item_name, category
order by count(order_details_id) asc
limit 1;

# what were the top 5 orders that spent the most money 
select order_id, sum(price) total_spend from order_details
left join menu_items
on order_details.item_id = menu_items.menu_item_id
group by order_id
order by sum(price) desc
limit 5;

# view the details of the highest spend order. what insights can you gather from the results?
select category, count(item_id) num_items from order_details
left join menu_items
on order_details.item_id = menu_items.menu_item_id
where order_id = 440
group by category;

# view details of the top highest spend orders. what insights can you gather from the results?
select order_id, category, count(item_id) num_items from order_details
left join menu_items
on order_details.item_id = menu_items.menu_item_id
where order_id in (440,2075,1957,330,2675)
group by order_id, category
order by count(item_id) desc;