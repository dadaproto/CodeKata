- 문제: 동물 보호소에 가장 먼저 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성해주세요.
- [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/59038)
- 제출 일자: 2024-01-20

### Query

```sql
SELECT MIN(DATETIME) "시간"
FROM ANIMAL_INS
```

### Result

| ANIMAL_ID           |
| :------------------ |
| 2013-10-14 15:38:00 |
