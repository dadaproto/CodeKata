- 문제: 동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성해주세요. 이때 결과는 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회해주세요.
- [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/59041)
- 제출 일자: 2024-01-18

```sql
SELECT NAME,
       COUNT(NAME) as COUNT
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME
ORDER BY NAME
```

### Result

| NAME | COUNT |
| :---- | :- |
| *Morado | 1 |
| *Sam | 1 |
| Anna | 1 |
| … | … |
| Zoe | 1 |
