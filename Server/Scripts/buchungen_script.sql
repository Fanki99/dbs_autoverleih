--CREATE TABLE T_BUCHUNGEN(
--    id NUMBER GENERATED ALWAYS AS IDENTITY,
--
--    kunde int NOT NULL,
--    standort int NOT NULL,
--    car int NOT NULL,
--    datum_von date NOT NULL,
--    datum_bis date NOT NULL,
--    summe float NOT NULL
--);
--
delete T_BUCHUNGEN;

INSERT INTO T_BUCHUNGEN (kunde, standort, car, datum_von, datum_bis, summe) VALUES (1,2,3,to_date('01/05/2019', 'dd/mm/yyyy'),to_date('03/05/2019', 'dd/mm/yyyy'), 0);



