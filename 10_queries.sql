
SET PAGESIZE 100

DESC resultat;

-- Antalet ansökningar per utbildningsområde                                                

SELECT                                                                              
    utbildningsområde "Utbildningsområde",                                          
    COUNT(beslut) "Ansökningar"                                                          
FROM resultat                                                                              
GROUP BY utbildningsområde
ORDER BY "Ansökningar" DESC                                                             
;                                                                                           

 -- Antalet beviljade ansökningar per utbildningsområde
  
SELECT
    utbildningsområde "Utbildningsområde",
    COUNT(*) "Beviljade"
FROM resultat
WHERE beslut = 'Beviljad'
GROUP BY utbildningsområde
ORDER BY "Beviljade" DESC
;

 -- Antalet avslagna ansökningar per utbildningsområde
 
SELECT
    utbildningsområde "Utbildningsområde",
    COUNT(*) "Avslag"
FROM resultat
WHERE beslut = 'Avslag'
GROUP BY utbildningsområde
ORDER BY "Avslag" DESC
;

-- Antalet beviljade ansökningar per utb.-namn inom Data/IT

SELECT
    utbildningsnamn "Utbildningsnamn",
    COUNT(*) "Beviljade"
FROM resultat
WHERE
    utbildningsområde = 'Data/IT'
    AND beslut = 'Beviljad'
GROUP BY utbildningsnamn
ORDER BY "Beviljade" DESC
;

-- Antalet avslagna ansökningar per utb.-namn inom Data/IT

SELECT
    utbildningsnamn "Utbildningsnamn",
    COUNT(*) "Avslag"
FROM resultat
WHERE
    utbildningsområde = 'Data/IT'
    AND beslut = 'Avslag'
GROUP BY utbildningsnamn
ORDER BY "Avslag" DESC
;

-- Beviljade ansökningar per utb.-anordnare adm. enhet & utb.-namn inom Data/IT

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

-- Topp 5 län efter beviljade ansökningar

SELECT
    län "Topp 5 län",
    COUNT(*) "Beviljade"
FROM resultat
WHERE
    beslut = 'Beviljad'
    AND län NOT IN ('Flera kommuner')
GROUP BY "Topp 5 län"
ORDER BY "Beviljade" DESC
FETCH FIRST 5 ROWS ONLY
;

-- Andel distans/bundna utb. inom respektive utb.-område

SELECT
    utbildningsområde "Utbildningsområde",
    CONCAT(
    ROUND(
    COUNT(
CASE
    WHEN studieform = 'Bunden' THEN 1 END)
    / COUNT(*) * 100, 2),'%') "Andel bundna",
    CONCAT(
    ROUND(
    COUNT(
CASE
    WHEN studieform = 'Distans' THEN 1 END)
    / COUNT(*) * 100, 2),'%') "Andel distans"
FROM resultat
GROUP BY "Utbildningsområde"
;

-- Antal utbildningar som innehåller ordet AI

SELECT
    SUM(
CASE
    WHEN INSTR((utbildningsnamn), 'AI')
    THEN 1 ELSE 0 END) "Innehåller 'AI'"
FROM resultat
;


EXIT
