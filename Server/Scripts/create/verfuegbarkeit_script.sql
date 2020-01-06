-- create
CREATE TABLE T_VERFUEGBARKEIT(
id NUMBER GENERATED ALWAYS AS IDENTITY,
   car_fk NUMBER REFERENCES T_CARS(id) NOT NULL,
   standort_fk NUMBER REFERENCES T_STANDORTE(id) NOT NULL,
   verfuegbar CHAR(1) NOT NULL
);

-- empty table
DELETE T_VERFUEGBARKEIT;

-- insert
INSERT INTO T_VERFUEGBARKEIT (car_fk, standort_fk, verfuegbar) VALUES (1,1,'y');
INSERT INTO T_VERFUEGBARKEIT (car_fk, standort_fk, verfuegbar) VALUES (2,1,'n');
INSERT INTO T_VERFUEGBARKEIT (car_fk, standort_fk, verfuegbar) VALUES (3,2,'y');
INSERT INTO T_VERFUEGBARKEIT (car_fk, standort_fk, verfuegbar) VALUES (4,3,'y');
INSERT INTO T_VERFUEGBARKEIT (car_fk, standort_fk, verfuegbar) VALUES (5,3,'y');
