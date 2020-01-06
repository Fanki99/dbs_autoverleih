-- create
CREATE TABLE T_SCHAEDEN(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    car_fk NUMBER REFERENCES T_CARS(id) NOT NULL,
    schaden VARCHAR2(256) NOT NULL,
    datum DATE NOT NULL,
    repariert_datum DATE NULL
);

-- empty table
DELETE T_SCHAEDEN;

-- insert
INSERT INTO T_SCHAEDEN (id, car_fk, schaden, datum, repariert_datum) VALUES (1, 2, 'Stoßstange eingedrückt, Licht beschädigt', to_date('23/12/2019', 'dd-mm-yyyy'), NULL);
INSERT INTO T_SCHAEDEN (id, car_fk, schaden, datum, repariert_datum) VALUES (2, 6, 'Raucher im Innenraum', to_date('20/04/2018', 'dd-mm-yyyy'), to_date('05/06/2018', 'dd-mm-yyyy'));
