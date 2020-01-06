-- create
CREATE TABLE T_PERSONEN(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    vorname VARCHAR2(64) NOT NULL,
    nachname VARCHAR2(64) NOT NULL,
    geburtsdatum DATE NOT NULL,
    fuehrerschein_valid CHAR(1) NOT NULL
);

-- empty table
DELETE T_PERSONEN;

-- insert
INSERT INTO T_PERSONEN (vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Thomas', 'Fankhauser',to_date('01/05/1999', 'dd/mm/yyyy'), 'y');
INSERT INTO T_PERSONEN (vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Fabian', 'Geistert', to_date('08/09/1997', 'dd/mm/yyyy'), 'y');
INSERT INTO T_PERSONEN (vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Thomas', 'Macek', to_date('11/03/1989', 'dd/mm/yyyy'), 'y');
INSERT INTO T_PERSONEN (vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Gregor', 'Holli',to_date('28/02/1998', 'dd/mm/yyyy'), 'n');
