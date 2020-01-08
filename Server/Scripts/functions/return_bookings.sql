create or replace type t_booking as object (
    id number,
  kunde varchar2(30),
  car varchar2(30),
  von date,
  bis date
);
/

create or replace type t_table_booking as table of t_booking;
/

create or replace function return_booking
return t_table_booking as
    v_ret   t_table_booking;
begin

    select 
      t_booking(b.id,concat(concat(p.vorname,' '),p.nachname),concat(concat(c.marke,' '),c.modell),b.datum_von,b.datum_bis)
    bulk collect into
      v_ret
    from 
      t_buchungen b
      join t_cars c on b.car_fk = c.id
      join t_kunden k on b.kunde_fk = k.id
      join t_personen p on k.person_fk = p.id;
  
    return v_ret;
  
end return_booking;
/
