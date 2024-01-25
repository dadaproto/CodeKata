-- 대여 기록이 존재하는 자동차 리스트

select distinct c.car_id
from car_rental_company_car c
join car_rental_company_rental_history h using (car_id)
where car_type = '세단' and month(start_date) = 10
order by 1 desc