create database tarun
use tarun
create table record(id int,sname varchar(90),email varchar(90))
create table totalamt(x int ,y int)
insert into record(id , sname,email)values
(1,'ashish','ashu@123'),
(2,'naman','naman@123'),
(3,'rahul','rahul@123'),
(4,'raju','raju@123')
select * from record where id = 1

alter proc finddata
as
begin
select * from record 
select sname from record
end
finddata
create proc insertdata
@id int,
@sname varchar(90),
@email varchar(90)
as
begin
insert into record(id ,sname, email)values(@id,@sname,@email)
end
insertdata @sname = 'ashu',@id = 4,@email='ashu@123'
finddata

alter proc insertdata
@id int,
@sname varchar(90),
@email varchar(90)
as
begin
declare @existid int
select @existid = id from record where id = @id
if @existid > 0
begin
select 'change kr value'
end
else
begin
insert into record(id,sname,email)values(@id,@sname,@email)
end
end
insertdata 2,'asd','as@12123'



alter proc insertdata
@id int,
@sname varchar(90),
@email varchar(90)
as
begin
declare @validname varchar(90);
select @validname = sname from record where sname = @sname
if @validname <> 'null'
begin 
select 'dusra name daal'
end
else
begin
insert into record(id,sname,email)values(@id,@sname,@email)
end
end
insertdata 9 ,'ashish','sd@g'