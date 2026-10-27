-- antalet ansökningar per utbildningsområde

SELECT
    Utbildningsområde "Utbildningsområde",
    COUNT(Beslut) "Ansökningar" 
FROM resultat
GROUP BY Utbildningsområde
ORDER BY "Ansökningar" DESC
;

EXIT
