-- create
CREATE TABLE T_ADRESSEN(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    straﬂe VARCHAR2(128) NOT NULL,
    hausnummer VARCHAR2(4) NOT NULL,
    plz VARCHAR2(4) NOT NULL,
    ort VARCHAR2(28) NOT NULL
);

-- empty table
DELETE T_ADRESSEN;

-- insert
INSERT INTO T_ADRESSEN (straﬂe, hausnummer, plz, ort) VALUES ('Bernardgasse', '333', '1070', 'Wien');
INSERT INTO T_ADRESSEN (straﬂe, hausnummer, plz, ort) VALUES ('Thaliastraﬂe', '333', '1160', 'Wien');
INSERT INTO T_ADRESSEN (straﬂe, hausnummer, plz, ort) VALUES ('Hochstaedtplatz', '333', '2100', 'Wien');
INSERT INTO T_ADRESSEN (straﬂe, hausnummer, plz, ort) VALUES ('Einoedhofweg', '333', '8042', 'Graz');
