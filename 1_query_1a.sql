-- Visar antalet ansökningar per Utbildningsområde

SELECT
    Utbildningsområde, SUM(SÖKTA_UTBILDNINGSOMGÅNGAR) ansökningar
    FROM resultat
    GROUP BY Utbildningsområde
    ORDER BY ansökningar DESC
;

EXIT
