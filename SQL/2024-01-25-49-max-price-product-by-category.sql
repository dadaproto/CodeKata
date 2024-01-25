-- 식품분류별 가장 비싼 식품의 정보 조회하기

select category, 
    price, 
    product_name
from food_product p1
where (category, price) in
    (
        select category, max(price)
        from food_product p2
        where p1.category = p2.category
    ) and category in ('과자', '국', '김치', '식용유')
order by 2 desc