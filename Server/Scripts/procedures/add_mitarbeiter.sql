CREATE OR REPLACE PROCEDURE add_mitarbeiter
   ( vorname IN varchar2, nachname IN varchar2, geburtsdatum IN varchar2, fuehrerschein IN varchar2, stammkunde IN varchar2, )
IS
 search_kunde number;
 search_standort number; 
 search_car number;
BEGIN
    select k.id into search_kunde from t_kunden k join t_personen p on k.person_fk = p.id where concat(concat(p.vorname,' '),p.nachname) = kunde;
    select s.id into search_standort from t_standorte s join t_adressen a on s.adresse_fk = a.id where a.strasse = standort;
    select c.id into search_car from t_cars c where concat(marke,modell) = car;

INSERT INTO T_BUCHUNGEN (kunde_fk, standort_fk, car_fk, datum_von, datum_bis, summe) VALUES (search_kunde,search_standort,search_car,to_date(von, 'dd/mm/yyyy'),to_date(bis, 'dd/mm/yyyy'), 0);

  COMMIT;
END add_booking;
/