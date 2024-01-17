/*
문제: 동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 
      이때 결과는 ANIMAL_ID 역순으로 보여주세요.
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59035
제출 일자: 2024-01-17
*/

SELECT NAME, DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC

/* 풀이
SELECT NAME, DATETIME: NAME, DATETIME COLUMN을 가져오겠다.
FROM ANIMAL_INS: ANIMAL_INS 테이블을 가져와라.
ORDER BY ANIMAL_ID DESC: ANIMAL_ID 역순(Descending)으로 정렬하라. */