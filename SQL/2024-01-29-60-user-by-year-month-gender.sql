-- 년, 월, 성별 별 상품 구매 회원 수 구하기

select year(s.sales_date) year, 
    month(s.sales_date) month, 
    i.gender, 
    count(distinct s.user_id) users
from user_info i
inner join online_sale s on i.user_id=s.user_id 
where not gender is NULL
group by 1, 2, 3
order by 1, 2, 3