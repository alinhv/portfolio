-- table 
select * from dbo.menu_items

--number of itmes 
select count(item_name) from dbo.menu_items
--most and least expensive itmes
select max(price),min(price) from dbo.menu_items
--count of italian dishes
select count(*) from menu_items
where category='italian'
--least and most expensive italian dishes
select max(price),min(price) from menu_items
where category='italian'
--dishes in each category
select category,count(*) as count_ from menu_items
group by category
--ave dish price in each category
select category,avg(price) from menu_items
group by category
