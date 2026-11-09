CREATE OR REPLACE PROCEDURE UPDATE_FOSTER_STATUS (
    P_FOSTER_ID IN number,
    P_NEW_STATUS IN varchar2
)
AS
BEGIN
    UPDATE FOSTER_HOME
    SET Availability_Status = P_NEW_STATUS
    WHERE Foster_ID = P_FOSTER_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Foster home ID not found');
    END IF;
END;
/
 
CREATE OR REPLACE PROCEDURE ADD_EMERGENCY_CASE (
    P_EMERGENCY_ID IN number,
    P_EMERGENCY_DATE IN date,
    P_EMERGENCY_TYPE IN varchar2,
    P_DESCRIPTION IN varchar2,
    P_ACTION_TAKEN IN varchar2,
    P_VET_ID IN number,
    P_ANIMAL_ID IN number,
    P_OUTCOME IN varchar2,
    P_SEVERITY IN varchar2
)
AS
BEGIN
    INSERT INTO EMERGENCY_CASE (
        Emergency_ID,
        Emergency_Date,
        Emergency_Type,
        Description,
        Action_Taken,
        Vet_ID,
        Animal_ID,
        Outcome,
        Severity
    )
    VALUES (
        P_EMERGENCY_ID,
        P_EMERGENCY_DATE,
        P_EMERGENCY_TYPE,
        P_DESCRIPTION,
        P_ACTION_TAKEN,
        P_VET_ID,
        P_ANIMAL_ID,
        P_OUTCOME,
        P_SEVERITY
    );
END;
/
 
CREATE OR REPLACE PROCEDURE UPDATE_EMERGENCY_OUTCOME (
    P_EMERGENCY_ID IN number,
    P_NEW_OUTCOME IN varchar2
)
AS
BEGIN
    UPDATE EMERGENCY_CASE
    SET Outcome = P_NEW_OUTCOME
    WHERE Emergency_ID = P_EMERGENCY_ID;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Emergency case ID not found');
    END IF;
END;
/
