create or replace PROCEDURE delete_booking
   ( booking_id IN NUMBER )
IS
  -- nothing
BEGIN

  delete from t_buchungen
  WHERE id = booking_id;

  COMMIT;
END;
