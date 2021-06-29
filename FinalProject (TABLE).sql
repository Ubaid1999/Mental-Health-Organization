use master 
go
drop database PROJ
go
create database PROJ
go
use PROJ
go
create table Signup
(
User_ID int primary key,
UserName varchar(20), 
Age int,
Gender char(1),
Email varchar(20),
Password varchar(20),
DateOfBirth Date,
UserType varchar(10),
)
go

create table Admin(
Admin_ID int primary key,
A_Name varchar(20),
Salary int
)
go

create table Staff(
Staff_ID int primary key,
Name varchar(20),
Specialization varchar(30), ------ dealing (dep,anxiety..)
Profession varchar (20),------(therapist,pysch)
Experience int,
StartTime Time,
EndTime Time,
Location varchar(30),
Rating_ID int,
Points int,
Benefits_ID int,
TotalPatients int,
CurrentPateints int
)
go

create table Patient(
Patient_ID int primary key,
Doctor_ID int foreign key References Staff(Staff_ID),
Name varchar(20),
Sypmtoms varchar(20),
Visits int,
Package_ID int,
ContactNum varchar(10)
)
go

create table PatientLogin(
Patient_ID int foreign key references Patient(Patient_ID), 
Password varchar(20),
)
go

create table StaffLogin  ---Therapist/doctors
(
Staff_ID int foreign key references Staff(Staff_ID), 
Password varchar(20),
)
go

create table AdminLogin ----managing faculty
(
Admin_ID int foreign key references Admin(Admin_ID), 
Password varchar(20),
)
go


create table Availabledays(
AvailableDay_ID int primary key,
Doctor_ID int foreign key References Staff(Staff_ID),
Days varchar(10),
)
go

create table ProfileEditing(
User_ID int,
UserType varchar(10),
Primary key (User_ID,UserType)
)
go

create table PatientEditing(
User_ID int primary key,
UserType varchar(10),
Status varchar(8),
ProfilePicture image,
)
alter table PatientEditing
add constraint FK_Patient
Foreign key (User_ID,UserType) References ProfileEditing(User_ID,UserType)
ON DELETE Cascade
go

create table DoctorEditing(
User_ID int,
UserType varchar(10),
Status varchar(8),
ProfilePicture image,
Specialization varchar (30),
Profession varchar (20),------(therapist,pysch)
Experience int,
StartTime Time,
EndTime Time,
Location varchar(20),
primary key (User_ID,UserType)
)
alter table DoctorEditing
add constraint FK_Doctor
Foreign key (User_ID,UserType) References ProfileEditing(User_ID,UserType)
ON DELETE Cascade
go

create table MatchingTimePreferences(
Time_ID int primary key,
Patient_ID int foreign key References Patient(Patient_ID),
Doctor_ID int foreign key References Staff(Staff_ID),
TimePreference Time, 
)
go

create table Ratings(
Rating_ID int primary key,
Patient_ID int foreign key References Patient(Patient_ID) ,
Doctor_ID int foreign key References Staff(Staff_ID) ,
Ratings int
)
go

create table YearlyPackages(
Package_ID int primary key,
P_Name varchar(20),
Price int
)
go

create table Catalogue(
Doctor_ID int foreign key references Staff(Staff_ID),
D_Name varchar(20),
Specialization varchar (30),
Profession varchar (20),
Location varchar(20)
)
go

create table DiscussionRoom(
Room_ID int primary key,
Doctor_ID int foreign key References Staff(Staff_ID),
R_Name varchar (20),
NoOfPeople int,
)
go

create table NoOfPeople(
Room_ID int foreign key References DiscussionRoom(Room_ID),
User_ID int foreign key References Signup(User_ID)
)
go

create table Appointment(
Appointment_ID int primary key,
Patient_ID int foreign key References Patient(Patient_ID),
Time_ID int foreign key References MatchingTimePreferences(Time_ID),
Doctor_ID int foreign key References Staff(Staff_ID),
AvailableDay_ID int foreign key references Availabledays(AvailableDay_ID),
P_Name varchar(20),
ContactNum varchar(10),
D_Name varchar(20),
PaymentStatus varchar(7),
Amount int
)
go

create table Benefits(
Benefit_ID int primary key,
Doctor_ID int foreign key References Staff(Staff_ID),
Rating_ID int foreign key References Ratings(Rating_ID),
D_Name varchar (20),
Points int
)
go

Select * from Signup
Select * from PatientLogin
Select * from StaffLogin
Select * from AdminLogin
Select * from Admin
Select * from Staff
Select * from Availabledays
Select * from Patient
Select * from ProfileEditing
Select * from PatientEditing
Select * from DoctorEditing
Select * from MatchingTimePreferences
Select * from Ratings
Select * from YearlyPackages
Select * from Catalogue
Select * from DiscussionRoom
Select * from NoOfPeople
Select * from Appointment
Select * from Benefits

