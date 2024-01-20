## 경기도에 위치한 식품창고 목록 출력하기

> 문제 [[링크]](https://school.programmers.co.kr/learn/courses/30/lessons/131114): FOOD_WAREHOUSE 테이블에서 경기도에 위치한 창고의 ID, 이름, 주소, 냉동시설 여부를 조회하기. 이때 냉동시설 여부가 NULL인 경우, 'N'으로 출력하고, 결과는 창고 ID를 기준으로 오름차순 정렬
> 제출 일자: 2024-01-20

---

### Query

```sql
SELECT WAREHOUSE_ID,
    WAREHOUSE_NAME,
    ADDRESS,
    IFNULL(FREEZER_YN, 'N') FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE '경기%'
ORDER BY WAREHOUSE_ID
```

### Results

| WAREHOUSE_ID | WAREHOUSE_NAME | ADDRESS                                 | IFNULL(FREEZER_YN, 'N') |
| :----------- | :------------- | :-------------------------------------- | :---------------------- |
| WH0001       | 창고\_경기1    | 경기도 안산시 상록구 용담로 141         | Y                       |
| WH0003       | 창고\_경기2    | 경기도 이천시 마장면 덕평로 811         | N                       |
| WH0004       | 창고\_경기3    | 경기도 김포시 대곶면 율생중앙로205번길  | N                       |
| WH0012       | 창고\_경기7    | 경기도 수원시 권선구 오목천로152번길 40 | N                       |
| WH0032       | 창고\_경기9    | 경기도 안양시 만안구 전파로 3           | N                       |

### Learned

- IFNULL
  - `IFNULL`은 NULL 값을 다른 값으로 다른 값으로 대체할 때 사용된다.
  - 기본 구문은 `IFNULL(expr1, expr2)`이며 `expr1`은 평가할 표현식, `expr2`는 `expr1`이 NULL인 경우 반환될 값이다.
  - `IFNULL`은 MySQL에서 사용되는 특정 함수이며, 다른 데이터베이스 시스템에서는 비슷한 기능을 하는 함수가 존재할 수 있다. (ex. `COALESCE`)
