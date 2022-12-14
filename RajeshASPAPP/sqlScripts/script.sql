USE [JOINSDB]
GO
/****** Object:  Table [dbo].[emID]    Script Date: 11/12/2022 7:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emID](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookingId]  AS ('boo'+CONVERT([varchar],(1000)+[Id])) PERSISTED NOT NULL,
	[BookingName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emID1]    Script Date: 11/12/2022 7:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emID1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[gender] [varchar](10) NULL,
	[salary] [money] NULL,
	[BookingId]  AS ('boo'+CONVERT([varchar],(1000)+[Id])) PERSISTED,
	[BookingName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empl]    Script Date: 11/12/2022 7:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[salary] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIZE]    Script Date: 11/12/2022 7:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SIZE] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 11/12/2022 7:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Course] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[Fee] [money] NULL,
	[TeachersId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 11/12/2022 7:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Email] [varchar](100) NULL,
	[Subject] [varchar](100) NULL,
	[Experience] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSHIRT]    Script Date: 11/12/2022 7:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSHIRT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[empl] ON 

INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (1, N'Abhay kumar', N'abhay211@gmail.com', N'Male', 12000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (2, N'Neha Kumari', N'neha211@gmail.com', N'Female', 15000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (3, N'Sahil Kumar', N'sahil211@gmail.com', N'Male', 16000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (4, N'Neeraj Kumar', N'neeraj211@gmail.com', N'Male', 17000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (5, N'Shubham Kumar', N'shubham211@gmail.com', N'Male', 12000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (6, N'Sanjeet Kumar', N'sanjeet211@gmail.com', N'male', 12000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (7, N'Mohit Kumar', N'mohit123@gmail.com', N'Male', 12000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (8, N'Abhay kumar', N'abhay211@gmail.com', N'Male', 12000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (9, N'Neha Kumari', N'neha211@gmail.com', N'Female', 15000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (10, N'Sahil Kumar', N'sahil211@gmail.com', N'Male', 16000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (11, N'Neeraj Kumar', N'neeraj211@gmail.com', N'Male', 17000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (12, N'Shubham Kumar', N'shubham211@gmail.com', N'Male', 12000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (13, N'Sanjeet Kumar', N'sanjeet211@gmail.com', N'Female', 12000.0000)
INSERT [dbo].[empl] ([id], [Name], [Email], [Gender], [salary]) VALUES (1002, N'Mayank Kumar Rana', N'mayank44@gmail.com', N'Male', 23000.0000)
SET IDENTITY_INSERT [dbo].[empl] OFF
GO
SET IDENTITY_INSERT [dbo].[SIZE] ON 

INSERT [dbo].[SIZE] ([ID], [SIZE]) VALUES (1, N'Small')
INSERT [dbo].[SIZE] ([ID], [SIZE]) VALUES (2, N'Medium')
INSERT [dbo].[SIZE] ([ID], [SIZE]) VALUES (3, N'Large')
INSERT [dbo].[SIZE] ([ID], [SIZE]) VALUES (4, N'X-Large')
INSERT [dbo].[SIZE] ([ID], [SIZE]) VALUES (5, N'XX-Large')
SET IDENTITY_INSERT [dbo].[SIZE] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([id], [Name], [Email], [Course], [Gender], [Fee], [TeachersId]) VALUES (1, N'Abhay kumar', N'abhay211@gmail.com', N'Java', N'Male', 12000.0000, 1)
INSERT [dbo].[Students] ([id], [Name], [Email], [Course], [Gender], [Fee], [TeachersId]) VALUES (2, N'Neha Kumari', N'neha211@gmail.com', N'PHP', N'Female', 15000.0000, 4)
INSERT [dbo].[Students] ([id], [Name], [Email], [Course], [Gender], [Fee], [TeachersId]) VALUES (3, N'Sahil Kumar', N'sahil211@gmail.com', N'Python', N'Male', 16000.0000, 3)
INSERT [dbo].[Students] ([id], [Name], [Email], [Course], [Gender], [Fee], [TeachersId]) VALUES (4, N'Neeraj Kumar', N'neeraj211@gmail.com', N'Java', N'Male', 17000.0000, 1)
INSERT [dbo].[Students] ([id], [Name], [Email], [Course], [Gender], [Fee], [TeachersId]) VALUES (5, N'Shubham Kumar', N'shubham211@gmail.com', N'Python', N'Male', 12000.0000, 3)
INSERT [dbo].[Students] ([id], [Name], [Email], [Course], [Gender], [Fee], [TeachersId]) VALUES (6, N'Sanjeet Kumar', N'sanjeet211@gmail.com', N'PHP', N'Female', 12000.0000, 4)
INSERT [dbo].[Students] ([id], [Name], [Email], [Course], [Gender], [Fee], [TeachersId]) VALUES (7, N'Rytham kumar', N'rytham211@gmail.com', N'Testing', N'Male', 12000.0000, NULL)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [Name], [Email], [Subject], [Experience]) VALUES (1, N'Rakesh Jha', N'rakesh22@gmail.com', N'Java', 5)
INSERT [dbo].[Teachers] ([Id], [Name], [Email], [Subject], [Experience]) VALUES (3, N'Amit Kumar', N'amit22@gmail.com', N'Python', 10)
INSERT [dbo].[Teachers] ([Id], [Name], [Email], [Subject], [Experience]) VALUES (4, N'Deepansh Kumar', N'deepansh22@gmail.com', N'Php', 12)
INSERT [dbo].[Teachers] ([Id], [Name], [Email], [Subject], [Experience]) VALUES (5, N'Manish Kumar', N'manish22@gmail.com', N'Angular', 12)
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET IDENTITY_INSERT [dbo].[TSHIRT] ON 

INSERT [dbo].[TSHIRT] ([ID], [NAME]) VALUES (1, N'Black')
INSERT [dbo].[TSHIRT] ([ID], [NAME]) VALUES (2, N'Blue')
INSERT [dbo].[TSHIRT] ([ID], [NAME]) VALUES (3, N'Orange')
INSERT [dbo].[TSHIRT] ([ID], [NAME]) VALUES (4, N'Green')
INSERT [dbo].[TSHIRT] ([ID], [NAME]) VALUES (5, N'See-Green')
INSERT [dbo].[TSHIRT] ([ID], [NAME]) VALUES (6, N'Red')
SET IDENTITY_INSERT [dbo].[TSHIRT] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_get_empl]    Script Date: 11/12/2022 7:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_get_empl]
@id int=null
as 
begin

select id,name,email,gender,salary from empl where id= isnull(@id,id)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_employee]    Script Date: 11/12/2022 7:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_get_employee]
as
begin 
select id,name,email,gender,salary from employee
end
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_empl]    Script Date: 11/12/2022 7:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE proc [dbo].[sp_insert_empl]
@name varchar(100),
@email varchar(100),
@gender varchar(100),
@Salary money

as
begin
declare @c int
select @c =count(*) from empl where Email=@email
if(@c>0)
begin
	select 1 as alreadyExist, 0 as Created
	end
	else
		begin

insert into empl(Name,Email,Gender,salary) values (@name,@email,@gender,@salary)
select 0 as alreadyExist, 1 as created



end
end



GO
