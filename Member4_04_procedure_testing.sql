
BEGIN
    UPDATE_FOSTER_STATUS(101,'Unavailable');
END;
/
 
select * from FOSTER_HOME
where Foster_ID = 101;
 
BEGIN
    ADD_EMERGENCY_CASE(6,TO_DATE('25-02-2026','DD-MM-YYYY'),'Snake Bite','Animal bitten by a snake','Emergency medication given',5,1,'Under Observation','Critical');
END;
/
 
Select * from EMERGENCY_CASE;
 
BEGIN
    UPDATE_EMERGENCY_OUTCOME(6,'Recovered');
END;
/
 
select * from EMERGENCY_CASE
where Emergency_ID = 6;
 
APEX APPLICATION:

 
 
