/*********************************************************************
/**
/** Trigger: CALCULATE_SUM
/** Type: Before insert
/** Type Extension: update
/** Developer: if18b053, if18b045
/** Description: calculates the price for a booking.
/**
/*********************************************************************
*/

CREATE OR REPLACE NONEDITIONABLE TRIGGER CALCULATE_SUM 
BEFORE INSERT ON T_BUCHUNGEN 
FOR EACH ROW
DECLARE 
    preis NUMBER;
BEGIN
    SELECT p.preis INTO preis FROM T_CARS c JOIN T_PREISE p on p.car_fk = c.id WHERE c.id = :new.car_fk;
    :new.summe := ((:new.datum_bis - :new.datum_von) * preis);
END;