CREATE TABLE T_ADRESSEN(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    straﬂe varchar(128) NOT NULL,
    hausnummer varchar(4) NOT NULL,
    plz varchar(4) NOT NULL,
    ort varchar(28) NOT NULL
);

delete T_ADRESSEN;

INSERT INTO T_ADRESSEN (straﬂe, hausnummer, plz, ort) VALUES ('Bernardgasse', '333', '1070', 'Wien');
INSERT INTO T_ADRESSEN (straﬂe, hausnummer, plz, ort) VALUES ('Thaliastraﬂe', '333', '1160', 'Wien');
INSERT INTO T_ADRESSEN (straﬂe, hausnummer, plz, ort) VALUES ('Hochstaedtplatz', '333', '2100', 'Wien');
INSERT INTO T_ADRESSEN (straﬂe, hausnummer, plz, ort) VALUES ('Einoedhofweg', '333', '8042', 'Graz');






