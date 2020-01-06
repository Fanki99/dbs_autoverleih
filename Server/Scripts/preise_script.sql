CREATE TABLE T_VERFUEGBARKEIT(
    id NUMBER GENERATED ALWAYS AS IDENTITY,

    car int NOT NULL,
    standort int NOT NULL,
    verfuegbar char(1) NOT NULL
);

delete T_VERFUEGBARKEIT;

INSERT INTO T_VERFUEGBARKEIT (car, standort, verfuegbar) VALUES (3, 1, 'y');
INSERT INTO T_VERFGUEBARKEIT (car, standort, verfuegbar) VALUES (1, 2, 'y');
INSERT INTO T_VERFGUEBARKEIT (car, standort, verfuegbar) VALUES (2, 3, 'y');
INSERT INTO T_VERFGUEBARKEIT (car, standort, verfuegbar) VALUES (4, 2, 'n');
INSERT INTO T_VERFGUEBARKEIT (car, standort, verfuegbar) VALUES (5, 1, 'y');
INSERT INTO T_VERFGUEBARKEIT (car, standort, verfuegbar) VALUES (6, 1, 'y');


