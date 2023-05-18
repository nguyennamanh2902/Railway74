Create database Testing_System_Assignment_1;
use             Testing_System_Assignment_1;
Create table    Department (
   Department_ID   INT,
   Demartment_name VARCHAR (20)
);
Create table position (
   Position_ID     INT,
   Position_name   VARCHAR (20)
   );
Create table Account (
   Account_ID      INT,
   Email           VARCHAR (50),
   Username        VARCHAR (50),
   Fullname        VARCHAR (50),
   Department_ID   INT,
   Position_ID     VARCHAR (50),
   Create_Date     Date
   );
Create table `Group` (
   `Group_ID`      INT,
   `Group_name`    VARCHAR(50),
   Creator_ID      INT,
   Create_Date     Date
);
Create table `Group_Account` (
   `Group_ID`      INT,
   Account_ID      INT,
   Join_date       Date
);
Create table Type_Question (
   Type_ID         INT,
   Type_name       VARCHAR (300)
);
Create table Category_Question (
   Category_ID     INT,
   Category_name   VARCHAR (100)
);
Create table Question (
   Question_ID      INT,
   Content         VARCHAR (500),
   Category_ID     INT,
   Type_ID         INT,
   Creator_ID      INT,
   Create_date     Date
);
Create table Answer (
   Answer_ID       INT,
   Content         VARCHAR (500),
   Question_ID     INT,
   IsCorrect       VARCHAR (20)
);
Create table Exam (
   Exam_ID      INT,
   Code         INT,
   Title        VARCHAR (300),
   Category_ID  INT,
   Duration     VARCHAR (50),
   Creator_ID   INT,
   Create_Date  Date
);
Create table Exam_Question (
   Exam_ID      INT,
   Question_ID  INT
);


