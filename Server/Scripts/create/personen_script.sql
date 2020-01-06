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
INSERT INTO T_PERSONEN (id, vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Thomas', 'Fankhauser',to_date('01/05/1999', 'dd/mm/yyyy'), 'y');
INSERT INTO T_PERSONEN (id, vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Fabian', 'Geistert', to_date('08/09/1997', 'dd/mm/yyyy'), 'y');
INSERT INTO T_PERSONEN (id, vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Thomas', 'Macek', to_date('11/03/1989', 'dd/mm/yyyy'), 'y');
INSERT INTO T_PERSONEN (id, vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Gregor', 'Holli',to_date('28/02/1998', 'dd/mm/yyyy'), 'n');
INSERT INTO T_PERSONEN (id, vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Person', 'A',to_date('01/01/1970', 'dd/mm/yyyy'), 'y');
INSERT INTO T_PERSONEN (id, vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Person', 'B', to_date('02/01/1971', 'dd/mm/yyyy'), 'y');
INSERT INTO T_PERSONEN (id, vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Person', 'C', to_date('03/02/1972', 'dd/mm/yyyy'), 'y');
INSERT INTO T_PERSONEN (id, vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Person', 'D',to_date('04/02/1973', 'dd/mm/yyyy'), 'n');
INSERT INTO T_PERSONEN (id, vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Person', 'E',to_date('05/03/1974', 'dd/mm/yyyy'), 'y');
INSERT INTO T_PERSONEN (id, vorname, nachname, geburtsdatum, fuehrerschein_valid) VALUES ('Person', 'F', to_date('06/03/1975', 'dd/mm/yyyy'), 'n');