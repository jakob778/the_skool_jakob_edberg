
SET PAGESIZE 100

DESC resultat;

-- 1. Fokusera på ett smalt yrkesområde?

SELECT
    utbildningsnamn "Smala yrkesområden",
    COUNT(smalt_yrkesområde) "Ansökningar",
    SUM(
CASE
    WHEN beslut = 'Beviljad' THEN 1 END) "Beviljade",
    SUM(
CASE 
    WHEN beslut = 'Avslag' THEN 1 END) "Avslag"
FROM resultat
WHERE smalt_yrkesområde = 'Ja'
GROUP BY "Smala yrkesområden"
;

-- 2. Vilka skolor har hög beviljandegrad? 

SELECT 
    utbildningsanordnare_administr "Anordnare",
    COUNT(*) "Antal ansökningar", 
    SUM(
CASE
    WHEN beslut = 'Beviljad' THEN 1 ELSE 0 END) "Beviljade",
    ROUND(
    SUM(
CASE 
    WHEN beslut = 'Beviljad' THEN 1 ELSE 0 END)
    / COUNT(*) * 100, 2) || '%' "Beviljandegrad"
FROM resultat
GROUP BY "Anordnare"
HAVING COUNT(*) >= 10
ORDER BY "Beviljandegrad" DESC
;



-- 3. Hur många omgångar är optimalt att söka? 

SELECT
    AVG(sökta_utbildningsomgångar) "Medel sökta omg."
FROM resultat
WHERE beslut = 'Beviljad'
;


EXIT
