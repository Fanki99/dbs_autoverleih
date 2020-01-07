/*********************************************************************
/**
/** Table: T_STANDORTE
/** Developer: if18b045
/** Description: This view returns all locations.
/**
/*********************************************************************
*/

CREATE OR REPLACE VIEW select_standorte AS
  SELECT 
    s.id AS s_id,
    a.strasse as adresse,
    a.ort as ort
  FROM T_STANDORTE s
  INNER JOIN T_ADRESSEN a ON s.adresse_fk = a.id;