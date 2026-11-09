insert into FOSTER_HOME values(101,'9876543210','Available','foster101@example.com',3,'571401','Karnataka','Mandya');
INSERT INTO FOSTER_HOME VALUES(102,'9876543211','Available','foster102@example.com',2,'571402','Karnataka','Mysuru');
INSERT INTO FOSTER_HOME VALUES(103,'9876543212','Unavailable','foster103@example.com',4,'560001','Karnataka','Bengaluru');
INSERT INTO FOSTER_HOME VALUES(104,'9876543213','Available','foster104@example.com',3,'570001','Karnataka','Mysuru');
INSERT INTO FOSTER_HOME VALUES(105,'9876543214','Available','foster105@example.com',5,'571401','Karnataka','Mandya');
select * from FOSTER_HOME;
 
insert into ANIMAL values(1,'Bruno','Dog','Labrador','Male',TO_DATE('15-06-2022','DD-MM-YYYY'),4,'Brown',TO_DATE('10-01-2026','DD-MM-YYYY'),'Available');
insert into ANIMAL values(2,'Luna','Cat','Persian','Female',TO_DATE('20-03-2023','DD-MM-YYYY'),3,'White',TO_DATE('12-01-2026','DD-MM-YYYY'),'Available');
insert into ANIMAL values(3,'Rocky','Dog','German Shepherd','Male',TO_DATE('05-09-2021','DD-MM-YYYY'),5,'Black',TO_DATE('15-01-2026','DD-MM-YYYY'),'Under Treatment');
insert into ANIMAL values(4,'Milo','Rabbit','Dutch','Male',TO_DATE('11-11-2023','DD-MM-YYYY'),2,'Grey',TO_DATE('18-01-2026','DD-MM-YYYY'),'Available');
insert into ANIMAL values(5,'Bella','Dog','Beagle','Female',TO_DATE('08-02-2022','DD-MM-YYYY'),4,'Tricolor',TO_DATE('20-01-2026','DD-MM-YYYY'),'Adopted');
select * from ANIMAL;
 
insert into STAFF values(1,'Animal Caretaker','staff1@example.com','9876543210',25000,'123456789012',TO_DATE('10-01-2023','DD-MM-YYYY'),'Arun','Kumar','Sharma','571401','Mandya','Karnataka');
insert into STAFF values(2,'Veterinary Assistant','staff2@example.com','9876543211',30000,'123456789013',TO_DATE('15-03-2022','DD-MM-YYYY'),'Priya','Rani','Patel','560001','Bengaluru','Karnataka');
insert into STAFF values(3,'Groomer','staff3@example.com','9876543212',22000,'123456789014',TO_DATE('20-06-2023','DD-MM-YYYY'),'Rahul','Raj','Verma','570001','Mysuru','Karnataka');
insert into STAFF values(4,'Shelter Manager','staff4@example.com','9876543213',40000,'123456789015',TO_DATE('05-02-2021','DD-MM-YYYY'),'Sneha','Devi','Rao','571402','Mysuru','Karnataka');
insert into STAFF values(5,'Animal Caretaker','staff5@example.com','9876543214',26000,'123456789016',TO_DATE('12-08-2022','DD-MM-YYYY'),'Kiran','Kumar','Reddy','571401','Mandya','Karnataka');
select * from STAFF;
 
insert into VETERINARIAN values(1,'Ramesh','Kumar','Rao','General Veterinary','VET1001','9876500001','vet1@example.com',TO_DATE('10-02-2020','DD-MM-YYYY'));
insert into VETERINARIAN values(2,'Anita','Devi','Sharma','Surgery','VET1002','9876500002','vet2@example.com',TO_DATE('15-05-2021','DD-MM-YYYY'));
insert into VETERINARIAN values(3,'Suresh','Raj','Patel','Dermatology','VET1003','9876500003','vet3@example.com',TO_DATE('20-07-2019','DD-MM-YYYY'));
insert into VETERINARIAN values(4,'Meena','Rani','Verma','Dentistry','VET1004','9876500004','vet4@example.com',TO_DATE('12-03-2022','DD-MM-YYYY'));
insert into VETERINARIAN values(5,'Karthik','Kumar','Reddy','Emergency Care','VET1005','9876500005','vet5@example.com',TO_DATE('08-11-2020','DD-MM-YYYY'));
select * from VETERINARIAN;
 
insert into CARES_FOR values(1,1);
insert into CARES_FOR values(2,2);
insert into CARES_FOR values(3,3);
insert into CARES_FOR values(4,4);
insert into CARES_FOR values(5,5);
select * from CARES_FOR;
 
insert into FOSTERED_BY values(1,101);
insert into FOSTERED_BY values(2,102);
insert into FOSTERED_BY values(3,103);
insert into FOSTERED_BY values(4,104);
insert into FOSTERED_BY values(5,105);
select * from FOSTERED_BY;
 
insert into GROOMING values(1,TO_DATE('15-02-2026','DD-MM-YYYY'),'Regular grooming completed','Bathing',1,3);
insert into GROOMING values(2,TO_DATE('16-02-2026','DD-MM-YYYY'),'Coat cleaned and brushed','Brushing',2,3);
insert into GROOMING values(3,TO_DATE('17-02-2026','DD-MM-YYYY'),'Nail trimming completed','Nail Trimming',3,1);
insert into GROOMING values(4,TO_DATE('18-02-2026','DD-MM-YYYY'),'Full grooming session completed','Full Grooming',4,3);
insert into GROOMING values(5,TO_DATE('19-02-2026','DD-MM-YYYY'),'Bath and coat cleaning completed','Bathing',5,5);
select * from GROOMING;
 
insert into EMERGENCY_CASE values(1,TO_DATE('20-02-2026','DD-MM-YYYY'),'Accident','Animal injured in a road accident','First aid provided',1,1,'Recovering','High');
insert into EMERGENCY_CASE values(2,TO_DATE('21-02-2026','DD-MM-YYYY'),'Fever','Animal showing high temperature','Medication provided',2,2,'Under Observation','Medium');
insert into EMERGENCY_CASE values(3,TO_DATE('22-02-2026','DD-MM-YYYY'),'Injury','Animal has a leg injury','Wound cleaned and treated',3,3,'Improving','High');
insert into EMERGENCY_CASE values(4,TO_DATE('23-02-2026','DD-MM-YYYY'),'Food Poisoning','Animal showing signs of food poisoning','Emergency treatment given',4,4,'Recovering','Critical');
insert into EMERGENCY_CASE values(5,TO_DATE('24-02-2026','DD-MM-YYYY'),'Dehydration','Animal showing signs of dehydration','Fluids administered',5,5,'Stable','Low');
select * from EMERGENCY_CASE;
 
