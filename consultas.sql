// exercicio 1
select * from custumers c left join 
orders o on(c.custumer_id=o.custumer_id )
where o.order_id is null


// execicio 2
select * from products p left join 
order_items oi on(p.product_id=oi.product_id) 
where oi.order_id is null


//exercicio 3
select * from products p full outer join 
stocks s on(p.product_id=s.product_id) 
where s.quantity = 0 or s.quantity is null

//exercicio 4
select store_id,count(o.order_id) from stores s full outer join 
orders o on(s.store_id=o.store_id) 
group by (o.order_id,store_id)

//exercicio 5
select * from staffs s left join 
orders o on(s.staff_id=o.staff_id) 
where o.order_id is null