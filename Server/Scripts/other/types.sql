create or replace type t_string as object (
  text varchar2(30)
);
/

create or replace type t_table as table of t_string;
/