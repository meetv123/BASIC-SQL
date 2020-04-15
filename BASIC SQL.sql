CREATE TABLE INSTRUCTOR (
    INS_ID INT NOT NULL,
    FIRSTNAME VARCHAR(40) NOT NULL,
    LASTNAME VARCHAR(40) NOT NULL,
    CITY VARCHAR(40),
    COUNTRY VARCHAR(40),
    PRIMARY KEY(INS_ID)
  );
  
  
  INSERT
  INTO INSTRUCTOR(INS_ID,FIRSTNAME,LASTNAME,CITY,COUNTRY)
  VALUES (1,'Rav','Ahuja','Toronto','CA');
  
select * from INSTRUCTOR;

  INSERT
  INTO INSTRUCTOR(INS_ID,FIRSTNAME,LASTNAME,CITY,COUNTRY)
  VALUES (2,'Meet','Vanani','Mumbai','India'),(3,'Tirth','Vanani','Mumbai','India');
  
  select * from INSTRUCTOR;
  
  select FIRSTNAME,LASTNAME,COUNTRY from INSTRUCTOR where COUNTRY='India';
  
  UPDATE INSTRUCTOR SET CITY='Markham' where INS_ID=1;
  
  select * from INSTRUCTOR;
  
  Delete from INSTRUCTOR where INS_ID=1;
  
  select * from INSTRUCTOR;
  
  