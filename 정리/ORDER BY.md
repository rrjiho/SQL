## ORDER BY

```sql
SELECT *
FROM players
WHERE birthYear IS NOT NULL
ORDER BY birthYear ASC; (DESC)
```
- ORDER BY 조건 ⇒ 오름차순 정렬해라. ASC (ascendent) 생략 가능
- 내림차순 정렬은 DESC (descendent)

```sql
SELECT *
FROM players
WHERE birthYear IS NOT NULL
ORDER BY birthYear DESC, birthMonth DESC, birthDay DESC;
```
- 위와 같은 방법으로 여러가지 조건으로 순서를 확인할 수 있다.

```sql
SELECT TOP (10)*
FROM players
WHERE birthYear IS NOT NULL
ORDER BY birthYear DESC, birthMonth DESC, birthDay DESC;
```
- TOP (10) 상위 10개 추출하라는 명령이다. (각 SQL마다 다르니 참고)
- TOP 1 PERCENT 는 상위 1 퍼센트만 추출하라는 명령이다.
