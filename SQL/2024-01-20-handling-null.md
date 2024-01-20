- 문제: 동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성해주세요. 이때 프로그래밍을 모르는 사람들은 NULL이라는 기호를 모르기 때문에, 이름이 없는 동물의 이름은 "No name"으로 표시해 주세요.
- [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/59410)
- 제출 일자: 2024-01-20

### Query

```sql
SELECT ANIMAL_TYPE,
CASE WHEN NAME IS NULL THEN "No name"
ELSE NAME END NAME,
SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID
```

### Result

| ANIMAL_TYPE | NAME    | SEX_UPON_INTAKE |
| :---------- | :------ | :-------------- |
| Cat         | Sugar   | Neutered Male   |
| ...         | ...     | ...             |
| Dog         | No name | spayed Female   |
| Dog         | Sniket  | Neutered Male   |
| ...         | ...     | ...             |

### Learned

- 컬럼 데이터에 특정 조건을 붙일 때 `CASE` `WHEN` 컬럼 조건 `THEN` 반환할 값 `ELSE` 반환할 값 `END`를 사용할 수 있다.
