SELECT CAR_TYPE, COUNT(*)   
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS like '%통풍시트%' or OPTIONS like '%열선시트%' or OPTIONS like '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE

-- WHERE OPTIONS IN (a, b, c) 사용할 수 없는 이유
-- SQL에서 WHERE IN은 지정된 값 중 하나와 정확히 일치하는 경우만 필터링하기 때문
-- 지정된 옵션 외 다른 옵션이 포함되어 있으면 결과에 포함하지 않음