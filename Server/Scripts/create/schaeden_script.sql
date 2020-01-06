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
INSERT INTO T_SCHAEDEN (car, schaden, datum) VALUES (1, 'Stoßstange eingedrückt, Licht beschädigt', to_date('23/12/2019', 'dd-mm-yyyy'), NULL);
