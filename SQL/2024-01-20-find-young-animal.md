- 문제: 동물 보호소에 들어온 동물 중 젊은 동물1의 아이디와 이름을 조회하는 SQL 문을 작성해주세요. 이때 결과는 아이디 순으로 조회해주세요.
- [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/59037)
- 제출 일자: 2024-01-20

### Query

```sql
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NOT INTAKE_CONDITION LIKE ('Aged')
```

### Result

| ANIMAL_ID | NAME  |
| :-------- | :---- |
| A349996   | Sugar |
| A350276   | Jewel |
| A350375   | Meo   |
| ...       | ...   |
