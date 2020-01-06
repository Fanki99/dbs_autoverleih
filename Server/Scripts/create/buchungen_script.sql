-- create
CREATE TABLE T_BUCHUNGEN(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    kunde_fk NUMBER REFERENCES T_KUNDEN(id) NOT NULL,
    standort_fk NUMBER REFERENCES T_STANDORTE(id) NOT NULL,
    car_fk NUMBER REFERENCES T_CARS(id) NOT NULL,
    datum_von DATE NOT NULL,
    datum_bis DATE NOT NULL,
    summe NUMBER NOT NULL
);

-- empty table
DELETE T_BUCHUNGEN;

-- insert
INSERT INTO T_BUCHUNGEN (kunde_fk, standort_fk, car_fk, datum_von, datum_bis, summe) VALUES (1,2,3,to_date('01/05/2019', 'dd/mm/yyyy'),to_date('03/05/2019', 'dd/mm/yyyy'), 0);
