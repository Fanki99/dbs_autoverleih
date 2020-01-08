CREATE OR REPLACE PROCEDURE add_schaden 
   ( car IN number, schaden IN varchar2, datum IN varchar2)
IS

BEGIN
INSERT INTO T_SCHAEDEN (car_fk, schaden,datum) VALUES (car,schaden,to_date(datum, 'dd/mm/yyyy'));

  COMMIT;
END add_schaden;
/