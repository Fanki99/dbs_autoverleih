create or replace type t_schaden as object (
  schaden varchar2(30),
  car varchar2(30)
);
/

create or replace type t_table_schaden as table of t_schaden;
/

create or replace NONEDITIONABLE function return_schaden
return t_table_schaden as
    v_ret   t_table_schaden;
begin

    select 
      t_schaden(schaden,concat(c.marke,c.modell), s.id)
    bulk collect into
      v_ret
    from 
      t_schaeden s
      join t_cars c on s.car_fk = c.id
      where s.repariert_datum is not null;

    return v_ret;

end return_schaden;
/
