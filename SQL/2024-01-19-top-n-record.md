- 문제: 동물 보호소에 가장 먼저 들어온 동물의 이름을 조회하는 SQL 문을 작성해주세요.
- [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/59405)
- 제출 일자: 2024-01-19

### Query

```sql
SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1
```

### Result

| NAME |
| :--- |
| Jack |
