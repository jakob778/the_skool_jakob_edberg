-- Antalet avslagna ansökningar per utbildningsområde

SELECT
    Utbildningsområde "Utbildningsområde",
    COUNT(*) "Avslag"
FROM resultat
WHERE Beslut = 'Avslag'
GROUP BY Utbildningsområde
ORDER BY "Avslag" DESC
;

EXIT 
