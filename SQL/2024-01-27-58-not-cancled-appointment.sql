-- 취소되지 않은 진료 예약 조회하기

select a.apnt_no, 
    p.pt_name, 
    p.pt_no, 
    a.mcdp_cd, 
    d.dr_name, 
    a.apnt_ymd
from appointment a
left join doctor d on a.mddr_id=d.dr_id
left join patient p on a.pt_no=p.pt_no
where date(a.apnt_ymd) = '2022-04-13' and a.apnt_cncl_yn = 'N' and a.mcdp_cd = 'CS'
order by a.apnt_ymd