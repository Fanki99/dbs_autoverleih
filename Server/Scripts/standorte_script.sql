CREATE TABLE T_STANDORTE(
    id NUMBER GENERATED ALWAYS AS IDENTITY,

    adresse int NOT NULL
);

delete T_STANDORTE;

INSERT INTO T_STANDORTE (adresse) VALUES (1);
INSERT INTO T_STANDORTE (adresse) VALUES (2);




