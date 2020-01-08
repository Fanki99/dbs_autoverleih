create or replace function return_cars
return t_table as
    v_ret   t_table;
begin

    select 
      t_string(concat(concat(marke,' '),modell))
    bulk collect into
      v_ret
    from 
      t_cars;
  
    return v_ret;
  
end return_cars;
/