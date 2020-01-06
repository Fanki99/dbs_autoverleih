CREATE TABLE T_SCHAEDEN(
    id NUMBER GENERATED ALWAYS AS IDENTITY,

    car int NOT NULL,
    schaden varchar(256) NOT NULL,
    datum date NOT NULL
);

delete T_SCHAEDEN;

INSERT INTO T_SCHAEDEN (car, schaden, datum) VALUES (1, 'Stoßstange eingedrückt, Licht beschädigt', to_date('23/12/2019', 'dd-mm-yyyy'));





