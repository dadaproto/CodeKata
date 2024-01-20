- 문제: PRODUCT 테이블에서 판매 중인 상품 중 가장 높은 판매가를 출력하는 SQL문을 작성해주세요. 이때 컬럼명은 MAX_PRICE로 지정해주세요.
- [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/131697)
- 제출 일자: 2024-01-20

### Query

```sql
SELECT MAX(PRICE) MAX_PRICE
FROM PRODUCT
```

### Result

| MAX_PRICE |
| :-------- |
| 85000     |
