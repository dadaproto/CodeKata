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



-- join 사용 예시

SELECT 
    YEAR(s.sales_date) AS year, 
    MONTH(s.sales_date) AS month,
    COUNT(DISTINCT i.user_id) AS purchased_user,
    ROUND(COUNT(DISTINCT i.user_id) / total_users.total_count, 1) AS purchased_ratio
FROM 
    user_info i
JOIN 
    online_sale s USING(user_id)
JOIN 
    (
        SELECT 
            COUNT(DISTINCT user_id) AS total_count
        FROM 
            user_info
        WHERE 
            YEAR(joined) = 2021
    ) AS total_users ON 1=1
WHERE 
    YEAR(i.joined) = 2021 
GROUP BY 
    YEAR(s.sales_date), MONTH(s.sales_date)
ORDER BY 
    YEAR(s.sales_date), MONTH(s.sales_date);