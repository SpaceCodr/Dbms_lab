CREATE OR REPLACE TRIGGER NEW_OLD
    BEFORE UPDATE OF CREDITS
    on COURSE
    FOR EACH ROW
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('OLD VALUE = ' || :OLD.CREDITS);
    DBMS_OUTPUT.PUT_LINE('NEW VALUE = ' || :NEW.CREDITS);
END;
/


-- UPDATE COURSE SET CREDITS = CREDITS + 1 WHERE COURSE_ID = 'BIO-101';
-- /