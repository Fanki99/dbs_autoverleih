/*********************************************************************
/**
/** Procedure delete_booking
/** In: booking_id – the id of the booking.
/** Developer: if18b053, if18b045
/** Description: This procedure deletes a booking.
/** 
/*********************************************************************
*/

CREATE OR REPLACE PROCEDURE delete_booking
   ( booking_id IN NUMBER )
IS
  -- nothing
BEGIN

  delete from t_buchungen
  WHERE id = booking_id;

  COMMIT;
END;
