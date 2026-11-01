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
    
EXIT
    
