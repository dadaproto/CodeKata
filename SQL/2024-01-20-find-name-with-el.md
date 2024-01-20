- 문제: 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 이때 결과는 이름 순으로 조회해주세요.
- [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/59047)
- 제출 일자: 2024-01-20

### Query

```sql
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME like '%el%' AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME
```

### Result

| ANIMAL_ID | NAME   |
| :-------- | :----- |
| A354597   | Ariel  |
| A355753   | Elijah |
| A373219   | Ella   |
| ...       | ...    |

### Learned

- `WHERE` 절의 조건들은 `AND`로 연결
