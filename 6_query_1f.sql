-- beviljade ansökningar per utb.-anordnare adm. enhet & utb.-namn inom Data/IT

SET PAGESIZE 100

SELECT
    Utbildningsnamn,
    Utbildningsanordnare_administr AS "UTB.-ANORDNARE",
    COUNT(*) beviljade
FROM resultat
WHERE 
    Utbildningsområde = 'Data/IT'
    AND Beslut = 'Beviljad'
GROUP BY "UTB.-ANORDNARE", Utbildningsnamn
ORDER BY "UTB.-ANORDNARE"
;

EXIT 
