--table
select * from dbo.order_details
--data range of table 
select concat(min(order_date),'-',max(order_date)) from order_details
--how many order in this data range
select count(distinct order_id) from order_details
--how many items which ordered
select count(distinct item_id) from order_details
--which orders have the most number of items
with m as(select order_id,count(order_details_id) as count_ from order_details
group by order_id)
select order_id,count_ from m
where count_ in (select max(count_) from m)
--more than 12 items
with m as(select order_id,count(order_details_id) as count_ from order_details
group by order_id), n as(
select order_id,count_ from m
where count_>12)
select count(order_id) from n
