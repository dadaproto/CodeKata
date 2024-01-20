- 문제: 동물 보호소에 들어온 모든 동물의 아이디와 이름, 보호 시작일을 이름 순으로 조회하는 SQL문을 작성해주세요. 단, 이름이 같은 동물 중에서는 보호를 나중에 시작한 동물을 먼저 보여줘야 합니다.
- [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/59404)
- 제출 일자: 2024-01-20

### Query

```sql
SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC
```

### Result

| ANIMAL_ID | NAME     | DATETIME            |
| :-------- | :------- | :------------------ |
| A368930   |          | 2014-06-08 13:20:00 |
| A362383   | \*Morado | 2016-04-21 08:19:00 |
| A412626   | \*Sam    | 2016-03-13 11:17:00 |
| ...       | ...      | ...                 |
