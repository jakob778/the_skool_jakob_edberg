-- visar antalet beviljade ansökningar per utbildningsområde

SELECT
    Utbildningsområde "Utbildningsområde",
    COUNT(*) "Beviljade" 
FROM resultat
WHERE Beslut = 'Beviljad'
GROUP BY Utbildningsområde
ORDER BY "Beviljade" DESC
;

EXIT
