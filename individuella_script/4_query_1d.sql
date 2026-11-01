-- Antalet beviljade ansökningar per utb.-namn inom Data/IT

SET PAGESIZE 100

SELECT
    utbildningsnamn,
    COUNT(*) "Beviljade"
FROM resultat
WHERE 
    utbildningsområde = 'Data/IT' 
    AND beslut = 'Beviljad'
GROUP BY utbildningsnamn
ORDER BY "Beviljade" DESC
;

EXIT

