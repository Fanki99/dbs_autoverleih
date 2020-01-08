/*********************************************************************
/**
/** Procedure schaden_repaired
/** In: schaden_id – the id of the schaden that has been fixed.
/** Developer: if18b053, if18b045
/** Description: This procedure sets the schaden repair date to the current date.
/**  and therefore marking it as complete.
/** 
/*********************************************************************
*/

CREATE OR REPLACE PROCEDURE schaden_repaired
   ( schaden_id IN NUMBER )
IS
  -- nothing
BEGIN

  UPDATE T_SCHAEDEN
  SET repariert_datum = sysdate
  WHERE id = schaden_id;

  COMMIT;
END;