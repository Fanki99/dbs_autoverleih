/*********************************************************************
/**
/** Table: T_SCHAEDEN
/** Developer: if18b053, if18b045
/** Description: This view returns valid damages to cars.
/**
/*********************************************************************
*/

CREATE OR REPLACE VIEW select_schaeden AS
  SELECT 
    s.id AS s_id,
    s.schaden AS schaden,
    s.datum AS datum,
    c.id AS c_id,
    c.marke AS marke,
    c.modell AS modell,
    c.ausstattung AS austattung
  FROM T_SCHAEDEN s
  INNER JOIN T_CARS c ON s.car_fk = c.id
  WHERE repariert_datum IS NULL;