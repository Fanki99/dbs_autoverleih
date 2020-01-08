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

CREATE OR REPLACE PROCEDURE add_mitarbeiter
   (_vorname IN varchar2, _nachname IN varchar2, _geburtsdatum IN varchar2, _fuehrerschein IN varchar2, _standort IN VARCHAR2, _gehaltsstufe IN NUMBER)
IS
 l_n_standort_id NUMBER;
 l_c_fueherschein_valid char;
 l_n_person_id NUMBER;
BEGIN
	SELECT id INTO l_n_standort_id FROM T_ADRESSEN WHERE strasse = _standort;

	IF _fuehrerschein = 'y' THEN
		l_c_fueherschein_valid := 'y';
	ELSE THEN
		l_c_fueherschein_valid := 'n';
	END IF;

	INSERT INTO T_PERSONEN (vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES (_vorname, _nachname, to_date(_geburtsdatum, 'dd/mm/yyyy'), l_c_fueherschein_valid);
	SELECT id INTO l_n_person_id FROM T_PERSONEN WHERE vorname = _vorname AND nachname = _nachname AND geburtsdatum = to_date(_geburtsdatum, 'dd/mm/yyyy') AND fuehrerschein_valid = l_c_fueherschein_valid;

	INSERT INTO T_MITARBEITER (person_fk, standort_fk, gehalt) VALUES (l_n_person_id, l_n_standort_id, _gehaltsstufe);

  COMMIT;
END add_mitarbeiter;
/