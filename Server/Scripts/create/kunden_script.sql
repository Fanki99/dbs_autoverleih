-- create
CREATE TABLE T_KUNDEN(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    person_fk NUMBER REFERENCES T_PERSONEN(id) NOT NULL,
    adresse_fk NUMBER REFERENCES T_ADRESSEN(id) NOT NULL,
    stammkunde CHAR(1) NOT NULL
);

-- empty table
DELETE T_KUNDEN;

-- insert
INSERT INTO T_KUNDEN (id, person_fk, adresse_fk, stammkunde) VALUES (1,1,1,'y');
INSERT INTO T_KUNDEN (id, person_fk, adresse_fk, stammkunde) VALUES (2,2,2,'y');
INSERT INTO T_KUNDEN (id, person_fk, adresse_fk, stammkunde) VALUES (3,3,3,'n');
INSERT INTO T_KUNDEN (id, person_fk, adresse_fk, stammkunde) VALUES (4,4,4,'n');
INSERT INTO T_KUNDEN (id, person_fk, adresse_fk, stammkunde) VALUES (5,5,5,'n');
