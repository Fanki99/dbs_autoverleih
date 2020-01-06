CREATE TABLE T_MITARBEITER(
    id NUMBER GENERATED ALWAYS AS IDENTITY,

    person int NOT NULL,
    standort int NOT NULL,
    gehalt float NOT NULL
);

delete T_MITARBEITER;

INSERT INTO T_MITARBEITER (person, standort, gehalt) VALUES (1, 2, 2430.69);
INSERT INTO T_MITARBEITER (person, standort, gehalt) VALUES (2, 1, 1030.30);





