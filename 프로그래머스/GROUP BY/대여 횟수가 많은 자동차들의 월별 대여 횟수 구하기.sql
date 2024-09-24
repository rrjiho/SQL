SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(*) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
    AND CAR_ID IN (SELECT CAR_ID 
                   FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                   WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
                   GROUP BY CAR_ID
                   HAVING COUNT(*) >= 5
                  )    
GROUP BY MONTH(START_DATE), CAR_ID 
ORDER BY MONTH(START_DATE), CAR_ID DESC;
/*
 - 서브 쿼리에 WHERE 및 HAVING 걸어서 조건 다 추출하고
 - 다시 메인 쿼리에서 WHERE을 걸어서 전체가 아닌 조건에 대한 것을 또 걸러야 함
 - 일반적으로 COUNT(*) 모든 것을 카운트 하지만
 - 만약 COUNT(CAR_ID)로 한다면 NULL도 포함하기 때문에 *이 더 적절함
 - COUNT는 0인 것을 포함하지 않으므로 자연스럽게 HAVING RECORDS >= 1 생략 가능
*/
