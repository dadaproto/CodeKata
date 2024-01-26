-- 조건에 맞는 사용자 정보 조회하기

select u.user_id, 
u.nickname, 
concat(city, ' ', u.street_address1, ' ', u.street_address2) street_address,
concat(substr(u.tlno, 1, 3), '-', substr(u.tlno, 4, 4), '-', substr(u.tlno, 8, 4)) tlno
from used_goods_board b 
left join used_goods_user u on b.writer_id = u.user_id
group by 1
having count(user_id) >= 3
order by 1 desc