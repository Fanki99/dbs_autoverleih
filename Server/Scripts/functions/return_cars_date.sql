create or replace function return_cars_date (standort in varchar2)--, von in date, bis in date)
return t_table as
    v_ret   t_table;
begin

    select 
      t_string(concat(concat(marke,' '),modell))
    bulk collect into
      v_ret
    from 
      t_cars c join t_verfuegbarkeit v on v.car_fk = c.id
      join t_standorte s on v.standort_fk = s.id 
      join t_adressen a on s.adresse_fk = a.strasse
      where a.strasse = standort;
  
    return v_ret;
  
end return_cars_date;
/