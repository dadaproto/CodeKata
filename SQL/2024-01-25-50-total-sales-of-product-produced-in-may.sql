-- 5월 식품들의 총매출 조회하기

select p.product_id, 
    p.product_name, 
    (p.price * sum(o.amount)) total_sales
from food_product p
left join food_order o on p.product_id = o.product_id
where date_format(produce_date, '%Y-%m') = '2022-05'
group by 1
order by 3 desc, 1