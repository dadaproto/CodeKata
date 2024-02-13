-- 대여 횟수가 많은 자동자들의 월별 대여 횟수 구하기

select month(start_date) month, 
    car_id, 
    count(*) records
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where year(start_date)=2022 and month(start_date) between 8 and 10
    and car_id in (SELECT car_id
            from CAR_RENTAL_COMPANY_RENTAL_HISTORY
            where year(start_date)=2022 and month(start_date) between 8 and 10
            group by car_id
            having count(*) >= 5)
group by 1, 2
order by 1, 2 desc;