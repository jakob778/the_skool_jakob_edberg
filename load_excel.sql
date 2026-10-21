-- load_excel
SET LOADFORMAT XLSX
LOAD TABLE resultat 'resultat-ansokningsomgang-2025.xlsx' NEW

COMMIT;
