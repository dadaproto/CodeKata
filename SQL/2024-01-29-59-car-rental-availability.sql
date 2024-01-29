-- 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기

select car_id, 
max(case 
    when '2022-10-16' between start_date and end_date then '대여중'
    else '대여 가능'
end) availability
from car_rental_company_rental_history
group by 1
order by 1 desc