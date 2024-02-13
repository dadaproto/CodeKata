-- 입양 시각 구하기(2) WITH, RECURSIVE

with recursive table1 as (
    select 0 as hour
    union all
    select hour+1
    from table1 where hour < 23
    ),
    table2 as (
    select hour(datetime) hour, 
        count(distinct animal_id) as count
    from animal_outs
    group by hour
    )
    
select table1.hour, 
    case
    when table2.count is null then 0
    else table2.count
    end count
from table1
left join table2 on table1.hour = table2.hour
order by hour