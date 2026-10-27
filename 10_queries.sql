
SET PAGESIZE 100

DESC resultat;

-- Antalet ansökningar per utbildningsområde                                                

SELECT                                                                              
    Utbildningsområde "Utbildningsområde",                                          
    COUNT(Beslut) "Ansökningar"                                                          
FROM resultat                                                                              
GROUP BY Utbildningsområde
ORDER BY "Ansökningar" DESC                                                             
;                                                                                           

 -- Antalet beviljade ansökningar per utbildningsområde
  
SELECT
    Utbildningsområde "Utbildningsområde",
    COUNT(*) "Beviljade"
FROM resultat
WHERE Beslut = 'Beviljad'
GROUP BY Utbildningsområde
ORDER BY "Beviljade" DESC
;

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
