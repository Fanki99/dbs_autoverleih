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


create or replace  PROCEDURE add_kunde
   (vorname IN varchar2, nachname IN varchar2, geburtsdatum IN varchar2, fuehrerschein IN varchar2, stammkunde IN varchar2)
IS
 l_c_fueherschein_valid char;
 l_c_stammkunde char;
 l_n_person_id NUMBER;
BEGIN

	IF (fuehrerschein = 'y') THEN
		l_c_fueherschein_valid := 'y';
	ELSE
		l_c_fueherschein_valid := 'n';
	END IF;

	IF stammkunde = 'y' THEN
		l_c_stammkunde := 'y';
	ELSE
		l_c_stammkunde := 'n';
	END IF;

	INSERT INTO T_PERSONEN (vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES (vorname, nachname, to_date(geburtsdatum, 'dd/mm/yyyy'), l_c_fueherschein_valid);
    COMMIT;
	SELECT p.id INTO l_n_person_id FROM T_PERSONEN p WHERE p.vorname like vorname AND p.nachname like nachname order by id desc FETCH FIRST 1 ROWS ONLY;

	INSERT INTO T_KUNDEN (person_fk, adresse_fk, stammkunde) VALUES (l_n_person_id, 1, l_c_stammkunde);

  COMMIT;
END add_kunde;
/