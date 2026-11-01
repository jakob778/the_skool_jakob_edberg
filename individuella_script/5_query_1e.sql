-- Antalet avslagna ansökningar per utb.-namn inom Data/IT

SET PAGESIZE 100

SELECT
    utbildningsnamn,
    COUNT(*) "Avslag"
FROM resultat
WHERE 
    utbildningsområde = 'Data/IT'
    AND beslut = 'Avslag'
GROUP BY utbildningsnamn
ORDER BY "Avslag" DESC
;

EXIT
