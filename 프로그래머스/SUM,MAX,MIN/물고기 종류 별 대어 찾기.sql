SELECT a.ID, b.FISH_NAME, a.LENGTH
FROM FISH_INFO AS a
JOIN FISH_NAME_INFO AS b
ON a.FISH_TYPE = b.FISH_TYPE
WHERE a.FISH_TYPE IN
  (SELECT FISH_TYPE
   FROM FISH_INFO
   GROUP BY FISH_TYPE
   HAVING LENGTH = MAX(LENGTH)
  )
ORDER BY ID
