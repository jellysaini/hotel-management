USE [HotelDemo]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/23/2017 8:26:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[UserTypeID] [int] NULL,
	[IPAddress] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[IsCurrentLogin] [bit] NULL,
	[WrongTry] [int] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLog]    Script Date: 10/23/2017 8:26:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[UserName] [varchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_UserLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 10/23/2017 8:26:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([ID], [FirstName], [LastName], [Email], [Password], [UserTypeID], [IPAddress], [Country], [IsCurrentLogin], [WrongTry], [CreatedOn]) VALUES (1, N'Jarnail', N'Singh', N'jelly@gmail.com', N'123456', 2, N'171.61.212.111', N'India', 0, 0, CAST(N'2017-10-23T15:42:24.043' AS DateTime))
GO
INSERT [dbo].[User] ([ID], [FirstName], [LastName], [Email], [Password], [UserTypeID], [IPAddress], [Country], [IsCurrentLogin], [WrongTry], [CreatedOn]) VALUES (2, N'admin', N'admin', N'admin@gmail.com', N'123456', 1, NULL, NULL, 0, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserLog] ON 
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (1, 1, N'jelly saini', N'171.61.212.111', N'India', CAST(N'2017-10-23T15:44:06.240' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (2, 1, N'jelly saini', N'171.61.212.111', N'India', CAST(N'2017-10-23T15:45:56.670' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (3, 1, N'jelly saini', N'171.61.212.111', N'India', CAST(N'2017-10-23T16:07:15.290' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (4, 1, N'jelly saini', N'171.61.212.111', N'India', CAST(N'2017-10-23T16:12:11.003' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (5, 1, N'jelly saini', N'171.61.212.111', N'India', CAST(N'2017-10-23T16:39:38.910' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (6, 1, N'jelly saini', N'171.61.212.111', N'India', CAST(N'2017-10-23T16:49:15.820' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (7, 2, N'admin admin', N'171.61.212.111', N'India', CAST(N'2017-10-23T17:28:41.470' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (8, 2, N'admin admin', N'171.61.212.111', N'India', CAST(N'2017-10-23T17:38:19.087' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (9, 2, N'admin admin', N'171.61.212.111', N'India', CAST(N'2017-10-23T17:42:02.553' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (10, 2, N'admin admin', N'171.61.212.111', N'India', CAST(N'2017-10-23T17:45:47.493' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (11, 2, N'admin admin', N'171.61.212.111', N'India', CAST(N'2017-10-23T17:48:59.657' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (12, 2, N'admin admin', N'171.61.212.111', N'India', CAST(N'2017-10-23T17:50:41.120' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (13, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T18:56:34.607' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (14, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T19:01:01.633' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (15, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T19:05:35.680' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (16, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T19:07:47.790' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (17, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T19:09:38.957' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (18, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T19:12:04.247' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (19, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T19:19:44.803' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (20, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T19:22:08.800' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (21, 1, N'jelly saini', N'110.225.214.252', N'India', CAST(N'2017-10-23T19:23:29.967' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (22, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T19:40:31.247' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (23, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T20:00:55.097' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (24, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T20:14:24.953' AS DateTime))
GO
INSERT [dbo].[UserLog] ([ID], [UserID], [UserName], [IPAddress], [Country], [CreatedOn]) VALUES (25, 2, N'admin admin', N'110.225.214.252', N'India', CAST(N'2017-10-23T20:15:57.827' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserLog] OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 
GO
INSERT [dbo].[UserType] ([ID], [TypeName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[UserType] ([ID], [TypeName]) VALUES (2, N'Student')
GO
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
