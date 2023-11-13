# telecommunications_towers
Telecommunications tower sites civil work construction status database system

Requirements:

●The database system should be able to track the status of civil work construction sites for telecommunications tower sites.

●The database system should be able to store information about the following entities:

○Tower sites

○Construction projects

○Contractors

○Materials

○Tasks

●The database system should be able to generate reports on the status of construction projects, the performance of contractors, and the usage of materials.

Entities:

●Tower_Site

●Construction_Project

●Contractor

●Material

●Task

Attributes:

●Tower_Site:

○Tower_Site_ID (primary key)

○Tower_Site_Name

○Tower_Site_Address

○Tower_Site_Type

●Construction_Project:

○Construction_Project_ID (primary key)

○Construction_Project_Name

○Construction_Project_Start_Date

○Construction_Project_End_Date

○Construction_Project_Budget

○Tower_Site_ID (foreign key)

●Contractor:

○Contractor_ID (primary key)

○Contractor_Name

○Contractor_Address

○Contractor_Phone_Number

●Material:

○Material_ID (primary key)

○Material_Name

○Material_Quantity

○Material_Unit_Price

●Task:

○Task_ID (primary key)

○Task_Name

○Task_Start_Date

○Task_End_Date

○Task_Status

○Construction_Project_ID (foreign key)

○Contractor_ID (foreign key)

○Material_ID (foreign key)

Relationships:

●One tower site can have many construction projects.

●One construction project can have only one tower site.

●One construction project can have many contractors.

●One contractor can work on many construction projects.

●One task can be assigned to only one contractor.

●One contractor can be assigned to many tasks.

●One task can use only one material.

●One material can be used in many tasks.

1. Complete ER Diagram:
<picture>
 <source media="(prefers-color-scheme: dark)" srcset=" Telecommunication_Status_V4.drawio">
 <source media="(prefers-color-scheme: light)" srcset=" Telecommunication_Status_V4.drawio">
 <img alt="YOUR-ALT-TEXT" src=" Telecommunication_Status_V4.drawio">
</picture>
