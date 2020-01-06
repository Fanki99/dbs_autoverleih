CREATE TABLE T_VERFUEGBARKEIT(
id NUMBER GENERATED ALWAYS AS IDENTITY,
   car int NOT NULL,
   standort int NOT NULL,
   verfuegbar char(1) NOT NULL
);

delete T_VERFUEGBARKEIT;

INSERT INTO T_VERFUEGBARKEIT (car, standort, verfuegbar) VALUES (1,1,'y');
INSERT INTO T_VERFUEGBARKEIT (car, standort, verfuegbar) VALUES (2,1,'n');
INSERT INTO T_VERFUEGBARKEIT (car, standort, verfuegbar) VALUES (3,2,'y');
INSERT INTO T_VERFUEGBARKEIT (car, standort, verfuegbar) VALUES (4,3,'y');
INSERT INTO T_VERFUEGBARKEIT (car, standort, verfuegbar) VALUES (5,3,'y');





