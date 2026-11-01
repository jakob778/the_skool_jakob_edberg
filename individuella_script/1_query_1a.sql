-- Antalet ansökningar per utbildningsområde

SELECT
    utbildningsområde "Utbildningsområde",
    COUNT(beslut) "Ansökningar" 
FROM resultat
GROUP BY utbildningsområde
ORDER BY "Ansökningar" DESC
;

EXIT
