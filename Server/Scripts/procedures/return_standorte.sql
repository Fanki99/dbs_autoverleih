/*********************************************************************
/**
/** Procedure schaden_repaired
/** In: schaden_id – the id of the schaden that has been fixed.
/** Developer: if18b053
/** Description: This procedure sets the schaden repair date to the current date.
/**  and therefore marking it as complete.
/** 
/*********************************************************************
*/

CREATE OR REPLACE PROCEDURE return_standorte
as
BEGIN
  select adresse from select_standorte;
END;
