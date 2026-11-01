-- Topp 5 län efter beviljade ansökningar

SELECT
    län "Län",
    COUNT(*) "Beviljade"
FROM resultat
WHERE 
    beslut = 'Beviljad'
    AND län NOT IN ('Flera kommuner')
GROUP BY "Län"
ORDER BY "Beviljade" DESC
FETCH FIRST 5 ROWS ONLY
;

EXIT

