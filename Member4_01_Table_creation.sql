create table ANIMAL (
    Animal_ID number PRIMARY KEY,
    Name varchar(100),
    Species varchar(50),
    Breed varchar(50),
    Gender varchar(10),
    DOB date,
    Age number,
    Color varchar(30),
    Arrival_Date date,
    Status varchar(30)
);
create table VETERINARIAN (
    Vet_ID number PRIMARY KEY,
    First_Name varchar(50),
    Middle_Name varchar(50),
    Last_Name varchar(50),
    Specialization varchar(100),
    License_No varchar(50),
    Phone_No varchar(15),
    Email varchar2(100),
    DOJ date
);
Create table STAFF (
    Staff_ID number PRIMARY KEY,
    Role varchar(50),
    Email varchar(100),
    Phone_Number varchar(15),
    Salary number(10,2),
    Aadhar_ID varchar(20),
    DOJ date,
    First_Name varchar(50),
    Middle_Name varchar(50),
    Last_Name varchar(50),
    PIN_Code varchar(10),
    City varchar(50),
    State varchar(50)
);

create table FOSTER_HOME (
    Foster_ID number PRIMARY KEY,
    Phone_Number varchar(15),
    Availability_Status varchar(30),
    Email varchar(100),
    Capacity number,
    PIN_Code varchar(10),
    State varchar(50),
    City varchar(50)
);
CREATE TABLE EMERGENCY_CASE (
    Emergency_ID number PRIMARY KEY,
    Emergency_Date date,
    Emergency_Type varchar(50),
    Description varchar(500),
    Action_Taken varchar(500),
    Vet_ID number,
    Animal_ID number,
    Outcome varchar(100),
    Severity varchar(30),

    CONSTRAINT FK_EMERGENCY_VET
        FOREIGN KEY (Vet_ID)
        REFERENCES VETERINARIAN(Vet_ID),

    CONSTRAINT FK_EMERGENCY_ANIMAL
        FOREIGN KEY (Animal_ID)
        REFERENCES ANIMAL(Animal_ID)
);
 
create table CARES_FOR (
    Staff_ID number,
    Animal_ID number,

    CONSTRAINT PK_CARES_FOR
        PRIMARY KEY (Staff_ID, Animal_ID),

    CONSTRAINT FK_CARES_STAFF
        FOREIGN KEY (Staff_ID)
        REFERENCES STAFF(Staff_ID),

    CONSTRAINT FK_CARES_ANIMAL
        FOREIGN KEY (Animal_ID)
        REFERENCES ANIMAL(Animal_ID)
);
 
Create table FOSTERED_BY (
    Animal_ID number,
    Foster_ID number,

    CONSTRAINT PK_FOSTERED_BY
        PRIMARY KEY (Animal_ID, Foster_ID),

    CONSTRAINT FK_FOSTERED_ANIMAL
        FOREIGN KEY (Animal_ID)
        REFERENCES ANIMAL(Animal_ID),

    CONSTRAINT FK_FOSTERED_HOME
        FOREIGN KEY (Foster_ID)
        REFERENCES FOSTER_HOME(Foster_ID)
);
 
create table GROOMING (
    Grooming_ID number PRIMARY KEY,
    Grooming_Date date,
    Remarks varchar(500),
    Grooming_Type varchar(50),
    Animal_ID number,
    Staff_ID number,

    CONSTRAINT FK_GROOMING_ANIMAL
        FOREIGN KEY (Animal_ID)
        REFERENCES ANIMAL(Animal_ID),

    CONSTRAINT FK_GROOMING_STAFF
        FOREIGN KEY (Staff_ID)
        REFERENCES STAFF(Staff_ID)
);
 
CREATE TABLE HOME_PAGE (
    User_ID number PRIMARY KEY,
    Password varchar2(100),
    Login varchar2(100),
    Contact_Us varchar2(200)
);
 
create table STAFF_LOGIN (
    Staff_ID number,
    User_ID number,

    CONSTRAINT PK_STAFF_LOGIN
        PRIMARY KEY (Staff_ID, User_ID),

    CONSTRAINT FK_STAFF_LOGIN_STAFF
        FOREIGN KEY (Staff_ID)
        REFERENCES STAFF(Staff_ID),

    CONSTRAINT FK_STAFF_LOGIN_HOME
        FOREIGN KEY (User_ID)
        REFERENCES HOME_PAGE(User_ID)
);

i have pasted this much now