GO
create database FP

GO
use FP

go
create table ULogin
(
	LID int identity(1,1) primary key,
	Password varchar(20) not null,
	Uname varchar(30) not null unique,
	Type int not null,  
)
--- 1=P   2=D  3=A


create table Patient
(
	PatientID int primary key,
	Name varchar(30) not null,
	Phone char(11) not null,
	Address varchar(40),
	BirthDate Date not null,
	Gender char(1) not null,
	yearpackage int default 0,
	foreign key(PatientID) references ULogin(LID)
)
--drop table patient

create table YearlyPackages
(
    yid int primary key,
	yname varchar(20)
	
)

go

go

create table Specialization
(
	specNo int primary key,
	specName varchar(20) not null unique,
	sDescription varchar(200)
)

GO

create table Doctor
(
	DoctorID int primary key,
	dName varchar(30) not null,
	Phone char(11),
	dAddress varchar(40),
	BirthDate Date not null,
	Gender char(1) not null,
	specNo int not null,
	Charges float not null,
	SalaryPmonth float,
	TotalPatients int DEFAULT 0 not null,
	Qualification varchar(100) not null,
	Benefitclaimed int,
	checkd int not null 

	foreign key (specNo) references specialization(specNo)
)

create table Benefits
(
    Bid int primary key,
	bname varchar(20)
	
)
--drop table Benefits

create table BookApp
(
	AppointID int identity(1,1) primary key,
	DoctorID int,
	PatientID int,
	Date Datetime,
	--AppVal int,
	foreign key (PatientID) references Patient(PatientID), 
	foreign key (DoctorID) references Doctor(DoctorID) on delete set null

)
go
--drop table BookApp
--======================================================================================================================================
                                   --PROCEDURES/VIEWS/WAGAIRA
--======================================================================================================================================

GO
create procedure PatientInfo ---view patients profile in patient
@id int,
@name varchar(30) output,
@phone char(11) output,
@address varchar(40) output,
@birthDate varchar (10) output,
@age int output,
@gender char(1) output,
@yp varchar (20) output
as
begin
	select @name=Name, @phone=Phone, @yp=yname , @address=Address, @gender=Gender, @age=DATEDIFF(YEAR, BirthDate, GETDATE()), @birthDate = BirthDate 
	from Patient inner join YearlyPackages on Patient.yearpackage=YearlyPackages.yid
	where PatientID = @ID
end
go
go
create procedure docsInfo  ---view docs profile in Doctor
@id int,
@name varchar(30) output,
@phone char(11) output,
@address varchar(40) output,
@birthDate varchar (10) output,
@char int output,
@sal int output,
@np int output,
@gender char(1) output,
@bfc varchar (20) output,
@qual varchar (20) output,
@spec varchar (20) output

as
begin
	select @name=dName, @phone=Phone, @bfc=bname , @address=dAddress, @gender=Gender, @birthDate = BirthDate,@char=Charges,@sal=SalaryPmonth,@np=TotalPatients,@spec=specName,@qual=Qualification
	from Doctor inner join Benefits on Doctor.Benefitclaimed=Benefits.Bid
	inner join Specialization on Doctor.specNo=Specialization.specNo
	where DoctorID=@id
end
go
go
create procedure checkprevApp ---if user previously has an appointment They cannot book another one!
@pid int,
@num int output
as
begin
		if (exists (select * from BookApp where PatientID = @pid ))
		begin 
		set @num=0
		end
		else
		begin
		set @num=1
		end

end
go
go
create view SpecAvaila ---show docs with specialization
as
select specName as [Specialization], [sDescription] as [About], count(sp.specNo) as [Doctors Available] 
from Specialization Sp join Doctor D on sp.specNo = D.specNo
where D.checkd != 0
group by sp.specNo, specName, [sDescription] 

go

go
GO
create procedure signingPatient  ---patient signup
@name varchar(20),
@phone char(15),
@address varchar(40),
@date Date,
@gender char(1),
@password varchar(20),
@un varchar(30),

@status int output,   ---0=already taken,,,1=signedUPPPP
@ID int output

as
begin

	if not exists(select * from ULogin where Uname=@un)
	begin
		insert into ULogin values(@password, @un, 1)

		select @id = LID from ULogin where Uname=@un

		insert into Patient values(@id, @name, @phone, @address, @date, @gender,0)
		set @status = 1
	end	
	else
	begin
		set @status = 0
	end
end
go
create procedure ULog   --- all 3 login

@un varchar(30),
@password varchar(20),
@status int output,   ---0==LOGGED IN,,,,2=PASS DOESNT EXIST ,,,1=username DOESNT EXIST
@ID int output,
@type int output

as
begin
	if exists(select * from ULogin where Uname=@un)
	BEGIN
		if @password = (select password from ULogin where Uname=@un)
		BEGIN
			select @ID = LID, @type = [type] from ULogin where Uname=@un
			set @status = 0  --logged in!
		END
		else
		BEGIN
			set @status = 2 ---no pasword
			set @ID = 0
			set @type = 0
		END
	END

	else
	BEGIN
		set @status = 1  ---no uname
		set @ID = 0
		set @type = 0
	END
end

go

create PROCEDURE AppTodayforDoc      ---Shows all appointments today for doctor
@ddid INT
AS
BEGIN
	SELECT booked.AppointID, Pat.Name as [Patient's Name], booked.[Date] FROM BookApp booked
	JOIN Patient Pat ON booked.PatientID = Pat.PatientID
	WHERE booked.DoctorID = @ddid and DATEDIFF(DAY, booked.Date, GETDATE()) = 0
END

go

GO
create procedure removeApp   ---delete appointment of given patientid
@appid int
as 
begin
	delete from BookApp where @appid=AppointID
end
go
create procedure removeDoc    ---delete appointment of given docid
@docid int
as 
begin
	delete from Doctor where @docid=DoctorID
end
go
create procedure removePatient---delete appointment of given docid
@pid int
as 
begin
	delete from Patient where @pid=PatientID

end
go

GO
go
create procedure DocinfoD---Doctor_Information_By_ID1
@ddid int,
@specN varchar(20) output,
@bfcl varchar(20) output
as 
begin 
select @specN=specName,@bfcl=bname from Doctor inner join Specialization on Specialization.specNo=Doctor.specNo
inner join Benefits on Doctor.Benefitclaimed=Benefits.Bid
where DoctorID=@ddid
	select * from doctor where doctorid=@ddid;
	
end

go
GO
create procedure AppointmentToday ---
@pID int,
@dName varchar(30) OUTPUT,
@timings varchar(30) OUTPUT,
@count int OUTPUT
as
begin
	
		if (exists (select * from BookApp where PatientID = @pid ))
		begin
				select @dName = dName, @timings = CONVERT(VARCHAR(19),[date]) from BookApp A join Doctor D on A.DoctorID = D.DoctorID
																		   where PatientID = @pID 
				set @count = 1   ---app booked! sent back
		end

		else
		begin
				set @count = 0 ---no app
		end
end
go
--drop procedure AppointmentToday

GO
create procedure getDoc  ---retrivedoctor    

@specName varchar(20)
as
begin

	select DoctorID, [dName] as [Doctor's Name], specName as [Specialization]  ---removed spec
	from Specialization sp join Doctor D on sp.specNo = D.specNo
	where specName = @specName AND D.checkd != 0
	
end

go
--------------------------------------------------------------------------------------------------
GO

go

GO
create procedure getDD ---RetrieveDoctorData
@dID int,
@name varchar(30) output,
@phone char(11) output,
@gender varchar(2) output,
@charges float output,
@PTreated int output,
@qualification varchar(100) output,
@specialization varchar(100) output,
@age int output
as
begin
	select @name=dName, @phone=Phone, @gender=Gender,@specialization=Specialization.specName,@charges = Charges, @PTreated = TotalPatients, @qualification = qualification, @age=DATEDIFF(YEAR, BirthDate, GETDATE())
	from Doctor INNER JOIN Specialization 
	on Specialization.specNo=Doctor.specNo
	where DoctorID = @dID

end
go
GO

go

GO
create FUNCTION [dbo].[fnSplitString]   ---this is called to split 
( 
    @string NVARCHAR(MAX), 
    @delimiter CHAR(1) 
) 
RETURNS @output TABLE(splitdata NVARCHAR(MAX) 
) 
BEGIN 
    DECLARE @start INT, @end INT 
    SELECT @start = 1, @end = CHARINDEX(@delimiter, @string) 
    WHILE @start < LEN(@string) + 1 BEGIN 
        IF @end = 0  
            SET @end = LEN(@string) + 1
       
        INSERT INTO @output (splitdata)  
        VALUES(SUBSTRING(@string, @start, @end - @start)) 
        SET @start = @end + 1 
        SET @end = CHARINDEX(@delimiter, @string, @start)
        
    END 
    RETURN 
END


GO
create procedure getFreeTime   ---get available times
@dID int,
@pID int,
@count int OUTPUT
as
begin
declare @month int, @year int, @day int
declare @hoursList varchar(100)     ---all hours separated by ,

set @month = DATEPART(MONTH, GETDATE())
set @year  = DATEPART(YEAR, GETDATE())
set @day   = DATEPART(DAY, GETDATE())

declare @currentHour int
set @currentHour = 11     ----starts at 11:00 am
set @count = 0
set @hoursList = ''

declare @tempT varchar (10)
declare @tempHour int

set @tempHour = 0

	while (@currentHour != 21)  ---ends at 21 ie 9pm
	begin
			if (
				not exists (select* from BookApp 
							where
							DATEPART(YEAR, [DATE]) = @year AND  DATEPART(MONTH, [DATE]) = @month AND DATEPART(DAY, [DATE]) = @day
							AND DoctorID = @dID
							AND DATEPART(Hour, [DATE]) = @currentHour
							)
				)
	 begin

		set @count = @count + 1

		if (@currentHour < 12)  ---am pm conversions
		 begin
			set @tempT = ':00 AM'
			set @tempHour = @currentHour
		 end
				
		else if (@currentHour = 12)
		 begin
			set @tempT = ':00 PM'
			set @tempHour = @currentHour
		 end		

		  else
			begin
			 set @tempT = ':00 PM'
			 set @tempHour = @currentHour - 12
			end
								

	SELECT @hoursList = @hoursList + CAST(@tempHour AS VARCHAR(5))  + @tempT + ','
      end
	set @currentHour = @currentHour + 1
	end
    select convert (varchar(100), splitdata) as [Available Timing] from dbo.fnSplitString(@hoursList,',')
    end




GO
create procedure BookIntoTable     ---books into table 

@pid int,
@dId int,
@available int

as
begin
	
	 if(@available < 9)
		set @available = @available + 12

	declare @date varchar (100)
	select @date = CONVERT(VARCHAR(11),GETDATE(),6)
	select @date = @date + ' ' + cast (@available as varchar(30)) + ':00'
	
	declare @dateA datetime
	select @dateA = CONVERT(datetime, @date)

	insert into BookApp values (@dId,@pId,@dateA)  
	update Doctor
	set TotalPatients =TotalPatients + 1
	where DoctorID = @did
	
end
GO
--drop procedure BookIntoTable
go

create procedure ClaimBenefit1
@bid int,
@did int
--//@pt int
as
begin

	if (exists (select* from Doctor where DoctorID=@did AND TotalPatients>-1))
	begin
	update Doctor
	set Benefitclaimed = 1
	where DoctorID = @did
	print ('-->Benefit (1) Claimed !             ')
	end
	else
	begin
	print ('Sorry! Not Enough Patients to claim benefit (1)   ')
	end
end
GO
go
create procedure ClaimBenefit2
@bid int,
@did int
--//@pt int
as
begin

	if (exists (select* from Doctor where DoctorID=@did AND TotalPatients>2))
	begin
	update Doctor
	set Benefitclaimed = 2
	where DoctorID = @did
	print ('--> Benefit (2) Claimed !                       ')
	end
	else
	begin
	print ('--> Sorry! Not Enough Patients for benefit (2) ')
	end
end
GO
go
create procedure ClaimBenefit3
@bid int,
@did int
--//@pt int
as
begin

	if (exists (select* from Doctor where DoctorID=@did AND TotalPatients>8))
	begin
	update Doctor
	set Benefitclaimed = 3
	where DoctorID = @did
	print ('--> Benefit (3) Claimed !                       ')
	end
	else
	begin
	print ('--> Sorry! Not Enough Patients for benefit (3)   ')
	end
end
go
--drop procedure ClaimBenefit2
go
GO
create procedure yp1
@yid int,
@pid int
--//@pt int
as
begin

	if (exists (select* from Patient where PatientID=@pid AND yearpackage=@yid))
	begin
	print ('You Already Have (Lite) Package   ')
	end
	else
	begin
	update Patient
	set yearpackage = 1
	where PatientID = @pid
	print ('-->Lite Package    Claimed !             ')
	end
end
GO
go
create procedure yp2
@yid int,
@pid int
--//@pt int
as
begin

	if (exists (select* from Patient where PatientID=@pid AND yearpackage=@yid))
	begin
	print ('You Already Have (Pro) Package       ')	
	end
	else
	begin
	update Patient
	set yearpackage = 2
	where PatientID = @pid
	print ('-->Pro Package Claimed !               ')
	end
end
GO
go
create procedure yp3
@yid int,
@pid int
--//@pt int
as
begin

	if (exists (select* from Patient where PatientID=@pid AND yearpackage=@yid))
	begin
		print ('You Already Have (Premium) Package   ')	
	end
	else
	begin
	update Patient
	set yearpackage = 1
	where PatientID = @pid
	print ('-->Premium Package Claimed !         ')
	end
end
go
--drop procedure yp1
--drop procedure yp2

--drop procedure yp3

go



