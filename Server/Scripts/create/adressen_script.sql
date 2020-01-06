-- create
CREATE TABLE T_ADRESSEN(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    strasse VARCHAR2(128) NOT NULL,
    hausnummer VARCHAR2(4) NOT NULL,
    plz VARCHAR2(4) NOT NULL,
    ort VARCHAR2(28) NOT NULL
);

-- empty table
DELETE T_ADRESSEN;

-- insert
INSERT INTO T_ADRESSEN (id, strasse, hausnummer, plz, ort) VALUES (1,'Bernardgasse', '333', '1070', 'Wien');
INSERT INTO T_ADRESSEN (id, strasse, hausnummer, plz, ort) VALUES (2,'Thaliastraﬂe', '333', '1160', 'Wien');
INSERT INTO T_ADRESSEN (id, strasse, hausnummer, plz, ort) VALUES (3,'Hochstaedtplatz', '333', '1200', 'Wien');
INSERT INTO T_ADRESSEN (id, strasse, hausnummer, plz, ort) VALUES (4,'Einoedhofweg', '333', '8042', 'Graz');
INSERT INTO T_ADRESSEN (id, strasse, hausnummer, plz, ort) VALUES (5,'Salzachstraﬂe', '333', '1200', 'Wien');
INSERT INTO T_ADRESSEN (id, strasse, hausnummer, plz, ort) VALUES (6,'Adalbert-Stifter-Straﬂe', '333', '1200', 'Wien');
INSERT INTO T_ADRESSEN (id, strasse, hausnummer, plz, ort) VALUES (7,'Mariahilferstraﬂe', '333', '1060', 'Wien');
INSERT INTO T_ADRESSEN (id, strasse, hausnummer, plz, ort) VALUES (8,'Lerchengasse', '333', '1010', 'Wien');
INSERT INTO T_ADRESSEN (id, strasse, hausnummer, plz, ort) VALUES (9,'Neubaugasse', '333', '1020', 'Wien');
INSERT INTO T_ADRESSEN (id, strasse, hausnummer, plz, ort) VALUES (10,'Almdudlergasse', '333', '1040', 'Wien');
