-- Antal utbildningar som innehåller ordet AI

SELECT 
    SUM(
CASE
    WHEN INSTR((Utbildningsnamn), 'AI')
    THEN 1 ELSE 0 END) "Innehåller 'AI'"   
FROM resultat
;

EXIT
