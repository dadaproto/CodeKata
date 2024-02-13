-- 상품을 구매한 회원 비율 구하기

select year(sales_date) year, 
    month(sales_date) month,
    count(distinct user_id) purchased_user,
    round(count(distinct user_id) / (
        select count(distinct user_id)
        from user_info
        where year(joined) = 2021
        ), 1) purchased_ratio
from user_info i
join online_sale s using(user_id)
where year(joined) = 2021 
group by 1, 2
order by 1, 2