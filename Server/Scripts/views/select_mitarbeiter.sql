/*********************************************************************
/**
/** Table: T_MITARBEITER
/** Developer: if18b053, if18b045
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
  	p.fuehrerschein_valid AS fuehrerschein_valid
  FROM T_MITARBEITER m
  INNER JOIN T_PERSONEN p ON m.person_fk = p.id;