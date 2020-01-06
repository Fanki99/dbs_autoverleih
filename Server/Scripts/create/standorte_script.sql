-- create
CREATE TABLE T_STANDORTE(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    adresse_fk NUMBER REFERENCES T_ADRESSEN(id) NOT NULL
);

-- empty table
DELETE T_STANDORTE;

-- insert
INSERT INTO T_STANDORTE (adresse) VALUES (1,1);
INSERT INTO T_STANDORTE (adresse) VALUES (2,2);
