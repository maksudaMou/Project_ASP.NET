create table tags 
(
  tagid int not null identity primary key,
  tag nvarchar (30) not null
)
go 
create table publishers
( 
  publisherid int identity primary key,
  publishername nvarchar (40) not null,
  publisheremail nvarchar (50) null
 )
 go
 create table authors
 (
	authorid int identity primary key,
	authorname nvarchar(50) not null,
	email nvarchar(50) null
)
go
 create table books
( 
  bookid int identity primary key,
  title nvarchar (40) not null,
  coverprice money not null,
  publishdate date not null,
  available bit default 0,
  Picture VARCHAR(150) NOT NULL,
  publisherid int not null references publishers(publisherid)
 )
go
