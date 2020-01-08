/*********************************************************************
/**
/** Procedure add_mitarbeiter
/** In: _vorname – firstname
/** In: _nachname – lastname
/** In: _geburtsdatum – the birth date
/** In: _fuehrerschein – is license valid.
/** In: _stammkunde – is the customer a frequent buyer?
/** Developer: if18b053, if18b045
/** Description: This procedure adds a customer.
/** 
/*********************************************************************
*/

CREATE OR REPLACE PROCEDURE add_kunde
   (_vorname IN varchar2, _nachname IN varchar2, _geburtsdatum IN varchar2, _fuehrerschein IN varchar2, _stammkunde IN varchar2)
IS
 l_c_fueherschein_valid char;
 l_c_stammkunde char;
 l_n_person_id NUMBER;
BEGIN

	IF _fuehrerschein = 'y' THEN
		l_c_fueherschein_valid := 'y';
	ELSE THEN
		l_c_fueherschein_valid := 'n';
	END IF;

	IF _stammkunde = 'y' THEN
		l_c_stammkunde := 'y';
	ELSE THEN
		l_c_stammkunde := 'n';
	END IF;

	INSERT INTO T_PERSONEN (vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES (_vorname, _nachname, to_date(_geburtsdatum, 'dd/mm/yyyy'), l_c_fueherschein_valid);
	SELECT id INTO l_n_person_id FROM T_PERSONEN WHERE vorname = _vorname AND nachname = _nachname AND geburtsdatum = to_date(_geburtsdatum, 'dd/mm/yyyy') AND fuehrerschein_valid = l_c_fueherschein_valid;

	INSERT INTO T_KUNDEN (person_fk, standort_fk, gehalt) VALUES (l_n_person_id, 1, l_c_stammkunde);

  COMMIT;
END add_kunde;
/