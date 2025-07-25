--joning two tables
select * from dbo.menu_items me
join dbo.order_details od on od.item_id=me.menu_item_id
--least and most ordered items/whay categories
select item_name,count(order_id) as count_,category from dbo.menu_items me
join dbo.order_details od on od.item_id=me.menu_item_id
group by item_name,category
--top 5 orders spent the most money
select top 5 order_id,sum(price) from dbo.menu_items me
join dbo.order_details od on od.item_id=me.menu_item_id
group by order_id
order by sum(price) desc
--
