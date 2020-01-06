create or replace NONEDITIONABLE TRIGGER CALCULATE_SUM 
BEFORE INSERT ON T_BUCHUNGEN 
for each row
declare 
    preis number;
BEGIN
    select pk.preis into preis from t_cars c join t_preisklassen pk on c.preisklasse = pk.id where c.id = :new.car;
    :new.summe := ((:new.datum_bis - :new.datum_von) * preis);
END;