create or replace function return_kunden
return t_table as
    v_ret   t_table;
begin
    select 
      t_string(CONCAT(CONCAT(vorname, ' '),nachname))
    bulk collect into
      v_ret
    from 
      t_kunden k join t_personen p on k.person_fk = p.id;
    return v_ret;
end return_kunden;
/