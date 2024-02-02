-- 오프라인/온라인 판매 데이터 통합하기
select date_format(sales_date, '%Y-%m-%d') sales_date,
    product_id,
    user_id,
    sales_amount
from online_sale
where year(sales_date) = 2022
    and month(sales_date) = 3
union
select date_format(sales_date, '%Y-%m-%d') sales_date,
    product_id,
    NULL AS user_id,
    sales_amount
from offline_sale
where year(sales_date) = 2022
    and month(sales_date) = 3
order by 1,
    2,
    3