-- Beviljade ansökningar per utb.-anordnare adm. enhet & utb.-namn inom Data/IT

SET PAGESIZE 100

SELECT
    utbildningsnamn "Utbildningsnamn",
    utbildningsanordnare_administr "Anordnare",
    COUNT(*) "Beviljade"
FROM resultat
WHERE 
    utbildningsområde = 'Data/IT'
    AND beslut = 'Beviljad'
GROUP BY "Anordnare", "Utbildningsnamn"
ORDER BY "Anordnare"
;

EXIT 
