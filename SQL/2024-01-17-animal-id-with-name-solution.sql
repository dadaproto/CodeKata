-- [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/59407)
-- 문제: 동물 보호소에 들어온 동물 중, 이름이 있는 동물의 ID를 조회하는 SQL 문을 작성해주세요. 단, ID는 오름차순 정렬되어야 합니다.
-- 제출 일자: 2024-01-17

SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NOT NAME = 'NULL'
ORDER BY ANIMAL_ID

/* 풀이
SELECT ANIMAL_ID: 동물의 아이디 COLUMN 을 가져오겠다.
FROM ANIMAL_INS: ANIMAL_INS 테이블을 가져와라.
WHERE NOT NAME = 'NULL: NAME COLUMN의 데이터가 'NULL'이 아니다.
ORDER BY ANIMAL_ID: ANIMAL_ID를 오름차순으로 정렬하라.