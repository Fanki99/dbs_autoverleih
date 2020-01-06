-- create
CREATE TABLE T_MITARBEITER(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    person_fk NUMBER REFERENCES T_PERSONEN(id) NOT NULL,
    standort_fk NUMBER REFERENCES T_ADRESSEN(id) NOT NULL,
    gehalt NUMBER NOT NULL
);

-- empty table
DELETE T_MITARBEITER;

-- insert
INSERT INTO T_MITARBEITER (id, person_fk, standort_fk, gehalt) VALUES (1, 1, 2, 2430.69);
INSERT INTO T_MITARBEITER (id, person_fk, standort_fk, gehalt) VALUES (2, 2, 1, 1030.30);
