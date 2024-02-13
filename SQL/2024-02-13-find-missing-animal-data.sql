-- 없어진 기록 찾기

-- 1
select animal_id, name
from (
    select o.animal_id, o.name,
    o.animal_type, 
    date_format(o.datetime, "%Y-%m-%d") out_date, 
    i.datetime in_date
from animal_outs o
left join animal_ins i on o.animal_id=i.animal_id
) a
where in_date is Null
order by animal_id


-- 2
select o.animal_id, o.name
from animal_outs o
left join animal_ins i on o.animal_id=i.animal_id
where i.datetime is Null
order by 1