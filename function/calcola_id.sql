CREATE OR REPLACE FUNCTION "C##DB_COMET".calcola_id(
    p_Tabella                 IN VARCHAR2,
    p_PrefissoDefault        IN VARCHAR2
)
RETURN VARCHAR2
IS
    query VARCHAR2(500);
    chiave_primaria VARCHAR2(50);
    nuova_chiave VARCHAR2(50);
BEGIN
    
    SELECT cols.column_name
    INTO chiave_primaria
    FROM all_constraints cons, all_cons_columns cols
    WHERE cols.table_name = UPPER(p_Tabella)
    AND cons.constraint_type = 'P'
    AND cons.constraint_name = cols.constraint_name
    AND cons.owner = cols.owner;
    
    query := 'SELECT MAX(tabella.prefisso) || ''-'' || (MAX(tabella.contatore) + 1) ';
    query := query || 'FROM ( ';
    query := query || 'SELECT ';
    query := query || 'REGEXP_SUBSTR(' || chiave_primaria || ', ''[^-]+'', 1, 1) AS prefisso, ';
    query := query || 'TO_NUMBER(REGEXP_SUBSTR(' || chiave_primaria ||', ''[^-]+'', 1, 2)) AS contatore ';
    query := query || 'FROM ' || UPPER(p_Tabella) || ' ';
    query := query || ') tabella';

    EXECUTE IMMEDIATE query INTO nuova_chiave;    

    IF nuova_chiave = '-' THEN     
        nuova_chiave := UPPER(p_PrefissoDefault) || '-' || '1';
    END IF; 
    
    RETURN nuova_chiave;
END;