/*********************************************************************
/**
/** Procedure add_schaden
/** In: car – the id of the car.
/** In: schaden – the schaden.
/** In: datum – the date.
/** Developer: if18b053, if18b045
/** Description: This procedure adds a schaden.
/** 
/*********************************************************************
*/

CREATE OR REPLACE PROCEDURE add_schaden 
   ( car IN number, schaden IN varchar2, datum IN varchar2)
IS

BEGIN
INSERT INTO T_SCHAEDEN (car_fk, schaden,datum) VALUES (car,schaden,to_date(datum, 'dd/mm/yyyy'));

  COMMIT;
END add_schaden;
/