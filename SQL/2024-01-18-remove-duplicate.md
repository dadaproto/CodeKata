- 문제: 동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문을 작성해주세요. 이때 이름이 NULL인 경우는 집계하지 않으며 중복되는 이름은 하나로 칩니다.
- [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/59408)
- 제출 일자: 2024-01-18

```sql
SELECT COUNT(distinct NAME)
FROM ANIMAL_INS
WHERE NOT NAME = 'NULL'
```

### Result

| COUNT(distinct NAME) |
| :------------------- |
| 96                   |

### 풀이

- NAME column의 고유한 데이터 값을 카운트하라.
- ANIMAL_INS 테이블에서 데이터를 가져와라.
- NAME이 NULL인 경우에는 카운트하지 않는다.
