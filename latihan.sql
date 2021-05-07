create database latihan1

use latihan1

create table Users(
	UserId CHAR(5) primary key,
	LastName varchar(255),
	FirstName varchar(255) NOT NULL,
	School varchar(255) NOT NULL,
	Alamat varchar(255) NOT NULL,
	Email varchar(255) NOT NULL,
	PhoneNumber int NOT NULL,
	Lokasi varchar(255) NOT NULL,
	TanggalLahir varchar(255) NOT NULL,
	Gender varchar(20) NOT NULL
		check(Gender like 'male' or Gender like 'female')
)


create table Pages(
	PageID char(5) Primary key NOT NULL,
	PageName varchar(255) NOT NULL,
	PageContent varchar(255) NOT NULL
)


create table Posts(
	UserID char(5) foreign key references Users(UserID) NOT NULL,
	PostDate varchar(50) NOT NULL,
	PostContent varchar(50) NOT NULL,
	PostID char(5) primary key NOT NULL
)


create table Friends(
	FriendID char(5) primary key NOT NULL,
	UserID char(5) foreign key references Users(UserID) NOT NULL

)


create table PageLikes(
	UserID char(5) foreign key references Users(UserID) NOT NULL,
	PageID char(5) foreign key references Pages(PageID) NOT NULL
)



create table PostLikes(
	UserID char(5) foreign key references Users(UserID) NOT NULL,
	PostID char(5) foreign key references Posts(PostID) NOT NULL
)



create table Photos(
	ImageContent varchar(255) NOT NULL,
	PhotoID char(5) PRIMARY KEY NOT NULL,
	PostID  char (5) FOREIGN KEY REFERENCES Posts(PostID) NOT NULL
)



create table Shares(
	PostID char(5) foreign key references Posts(PostID) NOT NULL,
	UserID char(5) foreign key references Users(UserID) NOT NULL


)



create table Comments(
	CommentDate varchar(30) NOT NULL,
	PostID char(5) foreign key references Posts(PostID) NOT NULL,
	CommentID char(5) primary key NOT NULL,
	UserID char(5) foreign key references Users(UserID) NOT NULL,
	CommentContent varchar(255) NOT NULL


)



create table CommentLikes(
	CommentID char(5) foreign key references Comments(CommentID) NOT NULL,
	UserID char(5) foreign key references Users(UserID) NOT NULL,

)

select *
from Users 

select *
from Pages

select *
from Posts

select *
from Friends

select *
from PageLikes

select *
from PostLikes

select *
from Photos

select *
from Shares

select *
from Comments

select *
from CommentLikes

