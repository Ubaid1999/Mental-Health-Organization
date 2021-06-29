
USE FP
GO

insert into YearlyPackages(yid,yname) values(0,'NoPackageClaimed');
insert into YearlyPackages(yid,yname) values(1,'Lite Package');
insert into YearlyPackages(yid,yname) values(2,'Pro Package');
insert into YearlyPackages(yid,yname) values(3,'Premium Package');
go

insert into Benefits(bid,bname) values(0,'NoBenefitClaimed');
insert into Benefits(bid,bname) values(1,'Lite Benefit(1)');
insert into Benefits(bid,bname) values(2,'Pro Benefit(2)');
insert into Benefits(bid,bname) values(3,'Premium Benefit(3)');

INSERT INTO ULogin VALUES ('adminabc' ,'@admin' ,   3)

insert into Specialization values(1 , 'Psychologists' , 'A team of very experienced Psychologist from around the globe.')
insert into Specialization values(2 , 'Family Counselors' , 'Our priority is keeping your info private.')
insert into Specialization values(3 , 'Therapist' , 'Having trouble in daily life problems? we are here for you!')
insert into Specialization values(4 , 'Psychiatrist ','Deal medically with severe mental illnesses.' )



--LOGIN (2=doctor, 1=patient,3=admin)
INSERT INTO ULogin(Uname, Password, Type) VALUES('@roha123', 'd123', 2)
INSERT INTO ULogin(Uname, Password, Type) VALUES('@sajdah123', 'd123', 2)
INSERT INTO ULogin(Uname, Password, Type) VALUES('@ubaid123', 'd123',2)
INSERT INTO ULogin(Uname, Password, Type) VALUES('@fariha123', 'd123', 2)
INSERT INTO ULogin(Uname, Password, Type) VALUES('@hoor123', 'd123', 2)
INSERT INTO ULogin(Uname, Password, Type) VALUES('@hamza123', 'd123', 2)
INSERT INTO ULogin(Uname, Password, Type) VALUES('@wasay123', 'd123', 2)

INSERT INTO ULogin(Uname, Password, Type) VALUES('@nimra', 'p123', 1)
INSERT INTO ULogin(Uname, Password, Type) VALUES('@zuha', 'p123', 1)
INSERT INTO ULogin(Uname, Password, Type) VALUES('@sheeza', 'p123', 1)
INSERT INTO ULogin(Uname, Password, Type) VALUES('@manu', 'p123', 1)



DECLARE @ID INT
SELECT @ID = LID FROM ULogin WHERE Uname = '@roha123'
INSERT INTO Doctor VALUES(@ID, 'Roha Shariq', '030012345', 'somewhere,DHA,Karachi', '01-01-2000', 'F', 1, 2500, 30000,0, 'MASTERS,BACHELORS',0, 1)
SELECT @ID = LID FROM ULogin WHERE Uname = '@sajdah123'
INSERT INTO Doctor VALUES(@ID, 'Sajdah Shoaib', '030012345', 'somewhere,DHA,Islamabad', '02-02-1989', 'F', 1, 3000, 25000, 0, 'BACHELORS',0, 1)
SELECT @ID = LID FROM ULogin WHERE Uname = '@ubaid123'
INSERT INTO Doctor VALUES(@ID, 'Ubaid', '030012345', 'somewhere,ModelTown,Karachi', '03-03-1989', 'M', 1, 1500, 20000, 0, 'MASTERS,BACHELORS',0, 1)
SELECT @ID = LID FROM ULogin WHERE Uname = '@fariha123'
INSERT INTO Doctor VALUES(@ID, 'Fariha', '030012345', 'somewhere,DHA,Lahore', '04-04-1989', 'F', 1, 1000, 15000, 0, 'PHD,MASTERS,BACHELORS',0, 1)
SELECT @ID = LID FROM ULogin WHERE Uname = '@hoor123'
INSERT INTO Doctor VALUES(@ID, 'Hoorain Amir', '030012345', 'somewhere,EFG,Karachi', '07-07-1989', 'F', 3, 1000, 15000, 0, 'MASTERS',0, 1)
SELECT @ID = LID FROM ULogin WHERE Uname = '@hamza123'
INSERT INTO Doctor VALUES(@ID, 'Syed Hamza', '030012345', 'somewhere,HIJ,Karachi', '08-08-1989', 'M', 3, 1000, 15000, 0, 'MASTERS',0, 1)
SELECT @ID = LID FROM ULogin WHERE Uname = '@wasay123'
INSERT INTO Doctor VALUES(@ID, 'Wasay Amir', '030012345', 'somewhere,KLM,Karachi', '09-09-1989', 'M', 4, 1000, 15000, 0, 'MASTERS',0, 1)

--delete from Patient where Gender='F'
DECLARE @P_ID INT
SELECT @P_ID = LID FROM ULogin WHERE Uname='@nimra'
INSERT INTO Patient VALUES(@P_ID, 'NimraArif', '030012345', 'somewhere,KLM', '01-01-2005', 'F',0)
SELECT @P_ID = LID FROM ULogin WHERE Uname='@zuha'
INSERT INTO Patient VALUES(@P_ID, 'ZuhaArif', '030012345', 'somewhere,KLM', '02-02-2006', 'F',0)
SELECT @P_ID = LID FROM ULogin WHERE Uname='@sheeza'
INSERT INTO Patient VALUES(@P_ID, 'SheezaM', '030012345', 'somewhere,KLM', '03-03-2007', 'F',0)
SELECT @P_ID = LID FROM ULogin WHERE Uname='@manu'
INSERT INTO Patient VALUES(@P_ID, 'MahnoorS', '030012345', 'somewhere,KLM', '04-04-2005', 'F',0)
