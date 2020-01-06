/*********************************************************************
/**
/** Table: T_MITARBEITER
/** Developer: if18b053
/** Description: This view returns all neccessary informations about an employee.
/**
/*********************************************************************
*/

CREATE OR REPLACE VIEW select_mitarbeiter AS
  SELECT 
  	m.id AS m_id,
  	m.gehalt AS gehalt,
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
  FROM T_MITARBEITER AS m
  INNER JOIN T_PERSONEN AS p ON m.person_fk = p.id
  INNER JOIN T_ADRESSEN AS a ON m.adresse_fk = a.id;