-- 자동차 대여 기록 별 대여 금액 구하기
select history_id,
    floor(
        case
            when dd < 7 then daily_fee * dd
            when dd >= 7
            and dd < 30 then daily_fee * dd *(1 - 5 * 0.01)
            when dd >= 30
            and dd < 90 then daily_fee * dd *(1 - 8 * 0.01)
            when dd >= 90 then daily_fee * dd *(1 - 15 * 0.01)
        end
    ) fee
from (
        select h.history_id,
            c.daily_fee,
            datediff(h.end_date, h.start_date) + 1 dd,
            case
                when p.duration_type = '7일 이상' then 7
                when p.duration_type = '30일 이상' then 30
                when p.duration_type = '90일 이상' then 90
            end duration_type,
            p.plan_id,
            p.discount_rate
        from CAR_RENTAL_COMPANY_CAR c
            inner join CAR_RENTAL_COMPANY_RENTAL_HISTORY h on c.car_id = h.car_id
            inner join CAR_RENTAL_COMPANY_DISCOUNT_PLAN p on c.car_type = p.car_type
        where c.car_type = '트럭'
        group by h.history_id
    ) a
where dd <> 0
order by fee desc,
    history_id desc