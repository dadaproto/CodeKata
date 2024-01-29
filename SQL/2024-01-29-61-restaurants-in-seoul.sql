-- 서울에 위치한 식당 목록 출력하기

select i.rest_id, 
    i.rest_name, 
    i.food_type, 
    i.favorites, 
    i.address, 
    round(avg(r.review_score), 2) score
from rest_info i
inner join rest_review r on i.rest_id=r.rest_id
where address like '서울%'
group by 1
order by score desc, 4 desc