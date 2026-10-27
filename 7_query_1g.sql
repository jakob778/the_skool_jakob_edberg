-- topp 5 län efter beviljade ansökningar

SELECT
    Län,
    COUNT(*) beviljade
FROM resultat
WHERE 
    Beslut = 'Beviljad'
    AND Län NOT IN ('Flera kommuner')
GROUP BY Län
ORDER BY beviljade DESC
FETCH FIRST 5 ROWS ONLY
;

EXIT

