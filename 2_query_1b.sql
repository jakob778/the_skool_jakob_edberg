-- Antalet beviljade ansökningar per utbildningsområde

SELECT
    utbildningsområde "Utbildningsområde",
    COUNT(*) "Beviljade" 
FROM resultat
WHERE beslut = 'Beviljad'
GROUP BY utbildningsområde
ORDER BY "Beviljade" DESC
;

EXIT
