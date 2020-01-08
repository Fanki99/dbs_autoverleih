/*********************************************************************
/**
/** Procedure add_mitarbeiter
/** In: _vorname – firstname
/** In: _nachname – lastname
/** In: _geburtsdatum – the birth date
/** In: _fuehrerschein – is license valid.
/** In: _standort – working place
/** In: _gehaltsstufe - amount of salary
/** Developer: if18b053, if18b045
/** Description: This procedure adds a employee.
/** 
/*********************************************************************
*/

create or replace NONEDITIONABLE PROCEDURE add_mitarbeiter
   (vorname IN varchar2, nachname IN varchar2, geburtsdatum IN varchar2, fuehrerschein IN varchar2, standort IN VARCHAR2, gehaltsstufe IN NUMBER)
IS
 l_n_standort_id NUMBER;
 l_c_fueherschein_valid char;
 l_n_person_id NUMBER;
BEGIN
	SELECT id INTO l_n_standort_id FROM T_ADRESSEN WHERE strasse = standort;

	IF fuehrerschein = 'y' THEN
		l_c_fueherschein_valid := 'y';
	ELSE 
		l_c_fueherschein_valid := 'n';
	END IF;

	INSERT INTO T_PERSONEN (vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES (vorname, nachname, to_date(geburtsdatum, 'dd/mm/yyyy'), l_c_fueherschein_valid);
    COMMIT;
	SELECT id INTO l_n_person_id FROM T_PERSONEN p WHERE p.vorname like vorname AND p.nachname like nachname order by id desc FETCH FIRST 1 ROWS ONLY;

	INSERT INTO T_MITARBEITER (person_fk, standort_fk, gehalt) VALUES (l_n_person_id, l_n_standort_id, gehaltsstufe);

  COMMIT;
END add_mitarbeiter;
