/*********************************************************************
/**
/** Trigger: check_license
/** Type: Before insert
/** Type Extension: insert
/** Developer: if18b053, if18b045
/** Description: checks if the user has a valid license.
/**
/*********************************************************************
*/

CREATE OR REPLACE NONEDITIONABLE TRIGGER check_license 
BEFORE INSERT ON T_BUCHUNGEN 
FOR EACH ROW
DECLARE 
    l_c_is_valid char;
BEGIN
    SELECT p.fuehrerschein_valid INTO l_c_is_valid FROM T_KUNDEN k JOIN T_PERSONEN p ON k.person_fk = p.id WHERE p.kunde_fk = :new.kunde_fk;

    IF l_c_is_valid = 'n' THEN
    	-- invalid
    	raise_application_error(-20001,'fueherschein ist nicht gueltig.');
	END IF;
END;