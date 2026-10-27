-- visar antalet avslagna ansökningar per utb.-namn inom Data/IT

SET PAGESIZE 100

SELECT
    Utbildningsnamn,
    COUNT(*) avslag
FROM resultat
WHERE 
    Utbildningsområde = 'Data/IT'
    AND Beslut = 'Avslag'
GROUP BY Utbildningsnamn
ORDER BY avslag DESC
;

EXIT
