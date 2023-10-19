create database Telecommunications_Towers
use Telecommunications_Towers

CREATE TABLE Tower_Site (
  Tower_Site_ID INT NOT NULL,
  Tower_Site_Name VARCHAR(20) NOT NULL,
  Tower_Site_Address VARCHAR(30) NOT NULL,
  Tower_Site_Type VARCHAR(15) NOT NULL,
  PRIMARY KEY (Tower_Site_ID)
);

CREATE TABLE Construction_Project (
  Construction_Project_ID INT NOT NULL,
  Construction_Project_Name VARCHAR(50) NOT NULL,
  Construction_Project_Start_Date DATE NOT NULL,
  Construction_Project_End_Date DATE NOT NULL,
  Construction_Project_Budget DECIMAL(10,2) NOT NULL,
  Tower_Site_ID INT NOT NULL,
  FOREIGN KEY (Tower_Site_ID) REFERENCES Tower_Site (Tower_Site_ID),
  PRIMARY KEY (Construction_Project_ID)
);

CREATE TABLE Contractor (
  Contractor_ID INT NOT NULL,
  Contractor_Name VARCHAR(30) NOT NULL,
  --State VARCHAR(20) NOT NULL,
  Region VARCHAR(20) NOT NULL,
  PRIMARY KEY (Contractor_ID)
);

alter table Contractor
--drop column State
add Area VARCHAR(20) NOT NULL


--delete from Contractor

CREATE TABLE Material (
  Material_ID INT NOT NULL,
  Material_Name VARCHAR(40) NOT NULL,
  Material_Quantity INT,
  PRIMARY KEY (Material_ID)
);

--alter table Material
--add Material_Unit_Price DECIMAL(10,2)



CREATE TABLE Task (
  Task_ID INT NOT NULL,
  Task_Name VARCHAR(25) NOT NULL,
  Task_Start_Date DATE NOT NULL,
  Task_End_Date DATE NOT NULL,
  Task_Status VARCHAR(15) NOT NULL,
  Construction_Project_ID INT NOT NULL,
  Contractor_ID INT NOT NULL,
  Material_ID INT NOT NULL,
  FOREIGN KEY (Construction_Project_ID) REFERENCES Construction_Project (Construction_Project_ID),
  FOREIGN KEY (Contractor_ID) REFERENCES Contractor (Contractor_ID),
  FOREIGN KEY (Material_ID) REFERENCES Material (Material_ID),
  PRIMARY KEY (Task_ID)
);

CREATE TABLE Contractor_Phone_Number(
Contractor_ID INT NOT NULL, FOREIGN KEY (Contractor_ID) 
REFERENCES Contractor (Contractor_ID),
Contractor_Phone_Number INT NOT NULL
);

CREATE TABLE Task_Description(
Task_ID INT  NOT NULL, FOREIGN KEY (Task_ID) 
REFERENCES Task (Task_ID),
Task_Description VARCHAR(255) NOT NULL
);

 --Insert 10 records into the Tower_Site table
INSERT INTO Tower_Site (Tower_Site_ID, Tower_Site_Name, Tower_Site_Address, Tower_Site_Type)
VALUES
  ('303151','Tower Site 1', 'AA', 'RDU'),
  ('309013','Tower Site 2', 'BD', 'RDU'),
  ('307030','Tower Site 3', 'BD', 'RDU'),
  ('306078','Tower Site 4', 'BD', 'RDU'),
  ('309085','Tower Site 5', 'BD', 'RDU'),
  ('307085','Tower Site 6', 'BD', 'Green Field'),
  ('406080','Tower Site 7', 'AA', 'Green Field'),
  ('304246','Tower Site 8', 'AA', 'Green Field'),
  ('306177','Tower Site 9', 'BD', 'Green Field'),
  ('301130','Tower Site 10', 'BD', 'Green Field');

---- Insert 10 records into the Construction_Project table
INSERT INTO Construction_Project (Construction_Project_ID, Construction_Project_Name, Construction_Project_Start_Date, Construction_Project_End_Date, Construction_Project_Budget, Tower_Site_ID)
VALUES
  (30,'Project 1', '2023-03-01', '2023-06-30', 1000000, '303151'),
  (40,'Project 2', '2023-04-01', '2023-07-31', 1200000, '309013'),
  (50,'Project 3', '2023-05-01', '2023-08-31', 1400000, '307030'),
  (60,'Project 4', '2023-06-01', '2023-09-30', 1600000, '306078'),
  (70,'Project 5', '2023-07-01', '2023-10-31', 1800000,'309013'),
  (80,'Project 5', '2023-07-01', '2023-10-31', 1800000,'306177'),
  (90,'Project 5', '2023-07-01', '2023-10-31', 1800000,'304246'),
  (100,'Project 5', '2023-07-01', '2023-10-31', 1800000,'301130'),
  (200,'Project 5', '2023-07-01', '2023-10-31', 1800000,'406080'),
  (300,'Project 5', '2023-07-01', '2023-10-31', 1800000,'309085');
 
--Insert 10 records into the Contractor table
INSERT INTO Contractor(Contractor_ID, Contractor_Name, Region, Area)
VALUES
  ('3','YT General Contractor', 'AA', 'Chancho'),
  ('6','MA General Contractor', 'BD', 'Dingay Kimr'),
  ('9','AZ General Contractor', 'BD', 'Nifas Mewcha'),
  ('36','ME General Contractor', 'BD', 'Dangla'),
  ('39','NT General Contractor', 'BD', 'Adet'),
  ('63','AT General Contractor', 'BD', 'Merawi'),
  ('93','ES General Contractor', 'AA', 'Tulu Bolo'),
  ('333','EK General Contractor', 'AA', 'Weliso'),
  ('369','BA General Contractor', 'BD', 'Motta'),
  ('639','YA General Contractor', 'BD', 'Merto Lemariyam');

--Insert 10 records into the Material table
INSERT INTO Material(Material_ID, Material_Name, Material_Quantity, Material_Unit_Price)
VALUES
  ('0001','Mixer', 3, 20000.10),
  ('0002','Vibrator', 5, 10000.34),
  ('0003','Slump Cone Mold', 6, 1000.129),
  ('0004','Cube Mould', 6, 2000.76),
  ('0005','Torque Wrench', 3, 5000.32),
  ('0006','Dumby Level', 2, 15000.09),
  ('0007','GPS', 2, 30000.098),
  ('0008','Undeground Earthing Tester', 3, 16000.87),
  ('0009','Theodolite', 1, 50000.85),
  ('0010','Compactor', 2, 35000.41);

  --New Data
INSERT INTO Material(Material_ID, Material_Name, Material_Quantity, Material_Unit_Price)
VALUES
  ('0011','Schmdit Hammer Tester', 2, 35000.41)
--Insert 10 records into the Task table
INSERT INTO Task(Task_ID, Task_Name, Task_Start_Date, Task_End_Date,Task_Status,Construction_Project_ID,Contractor_ID,Material_ID)
VALUES
  ('0000000000001','Kickoff', '2022/11/30', '2022/12/01','Closed',90,333,0006),
  ('0000000000002','Excavation', '2022/12/02', '2022/12/06','Closed',90,333,0006),
  ('0000000000003','Pad rebar installation', '2022/12/07', '2022/12/11','Closed',90,333,0006),
  ('0000000000004','Anchor bolt installation', '2022/12/12', '2022/12/16','Closed',90,333,0006),
  ('0000000000005','Pad casting', '2022/12/17', '2022/12/18','Closed',90,333,0001),
  ('0000000000006','Column casting','2022/12/17', '2022/12/18','Closed',90,333,0004),
  ('0000000000007','Curing', '2022/12/19', '2022/12/26','Closed',90,333,0011),
  ('0000000000008','Backfill', '2022/12/27', '2022/12/31','Closed',90,333,0010),
  ('0000000000009','Equipments casting', '2023/01/01', '2023/01/08','Closed',90,333,0011),
  ('0000000000010','Tower erection', '2023/01/09', '2023/01/16','Closed',90,9,0009),
  ('0000000000011','Underground earthing', '2023/01/17', '2023/01/20','Closed',90,333,0008),
  ('0000000000012','Abovegrond earthing', '', '','To be executed',90,369,0008),
  ('0000000000013','Grouting', '', '','To be executed',90,333,0001),
  ('0000000000014','Fence and guardhouse', '2023/01/26', '','Executing',90,333,0003);

--Insert 10 records into the Contractor_Phone_Number table
INSERT INTO Contractor_Phone_Number(Contractor_ID, Contractor_Phone_Number)
VALUES
  ('3', 0910101010),
  ('3', 0920202020),
  ('6', 0930303030),
  ('6', 0940404040),
  ('9', 0950505050),
  ('9', 0960606060),
  ('36', 0970707070),
  ('36', 0980808080),
  ('39', 0990909090),
  ('63', 0911111111),
  ('63', 0912121212),
  ('93', 0913131313),
  ('93', 0914141414),
  ('333', 0915151515),
  ('333', 0916161616),
  ('369', 0917171717),
  ('369', 0918181818),
  ('639', 0919191919),
  ('639', 0920202020);
--Insert 10 records into the Task_Description table
INSERT INTO Task_Description(Task_ID, Task_Description)
VALUES
  ('0000000000001','Site Coordinates
					Site Layout
					Site Benchmark
					Location setting out
					Retaining Wall
					Access Road
					Communication with s'),
  ('0000000000002','EHS Requirements
					Excavation Location and Size
					Foundation Pit Check / Subsoil Inspection / Mortar Spacer
					Abnormal Foundation Pit
					CTQ Checklist'),
  ('0000000000003','Lean Concrete
					Materials:
					-Formwork
                    -Rebar
					Rebar Binding
					-Pad Rebar Binding
					-Column Rebar Binding
					Formwork
					-Formwork System
					-Split Joint
					');


--delete from Tower_Site;
SELECT * FROM  Tower_Site
SELECT * FROM  Construction_Project
SELECT * FROM Contractor
SELECT * FROM Contractor_Phone_Number
SELECT * FROM Material
SELECT * FROM Task
SELECT * FROM Task_Description

--select * from information_schema.tables
--select top 2 * from Construction_Project  
--select Tower_Site='309013', Construction_Project_Start_Date, Construction_Project_End_Date from Construction_Project where Construction_Project_End_Date > '2023-06-30' and Construction_Project_Name='Project 2';

--Generate Reports

 --Status of construction projects
SELECT
  Construction_Project.Construction_Project_ID,
  Construction_Project_Name,
  Construction_Project_Start_Date,
  Construction_Project_End_Date,
  Task_Status
FROM Task,Construction_Project
GROUP BY Construction_Project.Construction_Project_ID,
  Construction_Project_Name,
  Construction_Project_Start_Date,
  Construction_Project_End_Date,
  Task_Status
ORDER BY Construction_Project_ID;

--Performance of contractors 
--Usage of materials
 
