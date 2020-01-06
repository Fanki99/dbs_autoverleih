CREATE TABLE T_KUNDEN(
    id NUMBER GENERATED ALWAYS AS IDENTITY,

    person int NOT NULL,
    adresse int NOT NULL,
    stammkunde char(1) NOT NULL
);

delete T_KUNDEN;

INSERT INTO T_KUNDEN (person, adresse, stammkunde) VALUES (1,1,'y');
INSERT INTO T_KUNDEN (person, adresse, stammkunde) VALUES (2,2,'y');
INSERT INTO T_KUNDEN (person, adresse, stammkunde) VALUES (3,3,'n');
INSERT INTO T_KUNDEN (person, adresse, stammkunde) VALUES (4,4,'n');
INSERT INTO T_KUNDEN (person, adresse, stammkunde) VALUES (5,5,'n');




