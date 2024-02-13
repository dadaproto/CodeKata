-- 특정 기간동안 대여 가능한 자동차들의 대여비용 구하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/157339

-- 1st try
select car_id, car_type, 
round(daily_fee * 30 * (1 - discount_rate / 100), 0) as fee
from
(
    select
        c.car_id,
        c.car_type,
        c.daily_fee,
        round(c.daily_fee * (datediff(r.end_date, r.start_date) + 1)  * (1 - d.discount_rate / 100), 0) as fee,
        d.discount_rate,
        r.history_id,
        regexp_replace(d.duration_type, '[^0-9]', '') duration_type,
        case
            when not r.start_date is null then datediff(r.end_date, r.start_date) + 1
            else 30
        end as rent_date,
        date_format(r.start_date, "%y-%m-%d") start_date,
        date_format(r.end_date, "%y-%m-%d") end_date
    from
        car_rental_company_car c
    left join
        car_rental_company_rental_history r on c.car_id = r.car_id
    left join
        car_rental_company_discount_plan d on c.car_type = d.car_type
    where
        c.car_type in ('세단', 'suv') and
        c.car_id not in (
        select car_id
        from car_rental_company_rental_history
        where start_date <= "2022-11-01" and end_date >= "2022-11-01"
        ) 
        and duration_type = 30
) a
group by 1
having fee between 500000 and 2000000
order by 3 desc, 2, 1


-- 중복 계산 제거, 서브 쿼리 대신 조인, 조건문을 조인 조건으로 이동
SELECT 
    c.CAR_ID,
    c.CAR_TYPE,
    ROUND(c.DAILY_FEE * 30 * (1 - d.DISCOUNT_RATE / 100), 0) AS FEE
FROM 
    CAR_RENTAL_COMPANY_CAR c
LEFT JOIN 
    CAR_RENTAL_COMPANY_RENTAL_HISTORY r ON c.CAR_ID = r.CAR_ID 
    AND r.start_date <= "2022-11-01" AND r.end_date >= "2022-11-01"
LEFT JOIN 
    CAR_RENTAL_COMPANY_DISCOUNT_PLAN d ON c.CAR_TYPE = d.CAR_TYPE 
    AND d.DURATION_TYPE = '30일 이상'
WHERE 
    c.CAR_TYPE IN ('세단', 'SUV')
    AND r.CAR_ID IS NULL    -- join 조건 중 1일부터 30일에 겹치는 대여 불가 자동차 id를 필터링
GROUP BY 
    c.CAR_ID
HAVING 
    FEE BETWEEN 500000 AND 2000000
ORDER BY 
    FEE DESC, c.CAR_TYPE ASC, c.CAR_ID ASC;