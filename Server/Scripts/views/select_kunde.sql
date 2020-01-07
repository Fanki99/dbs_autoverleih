/*********************************************************************
/**
/** Table: T_KUNDEN
/** Developer: if18b053, if18b045
/** Description: This view returns all neccessary informations about a customer.
/**
/*********************************************************************
*/

CREATE OR REPLACE VIEW select_kunde AS
  SELECT 
  	k.id AS k_id,
  	k.stammkunde AS stammkunde,
  	p.id AS p_id,
  	p.vorname AS vorname,
  	p.nachname AS nachname,
  	p.geburtsdatum AS geburtsdatum,
  	p.fuehrerschein_valid AS fuehrerschein_valid,
  	a.id AS a_id,
  	a.strasse AS strasse,
  	a.hausnummer AS hausnummer,
  	a.plz AS plz,
  	a.ort AS ort
  FROM T_KUNDEN k
  INNER JOIN T_PERSONEN p ON k.person_fk = p.id
  INNER JOIN T_ADRESSEN a ON k.adresse_fk = a.id;