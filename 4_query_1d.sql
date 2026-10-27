-- visar antalet beviljade ansökningar per utb.-namn inom Data/IT

SET PAGESIZE 100

SELECT
    Utbildningsnamn,
    COUNT(*) beviljade
FROM resultat
WHERE 
    Utbildningsområde = 'Data/IT' 
    AND Beslut = 'Beviljad'
GROUP BY Utbildningsnamn
ORDER BY beviljade DESC
;

EXIT

