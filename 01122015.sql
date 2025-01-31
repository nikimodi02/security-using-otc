USE [master]
GO
/****** Object:  Database [ChiragME]    Script Date: 12/01/2015 11:12:11 ******/
CREATE DATABASE [ChiragME] ON  PRIMARY 
( NAME = N'ChiragME', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ChiragME.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ChiragME_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ChiragME_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ChiragME] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChiragME].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChiragME] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ChiragME] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ChiragME] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ChiragME] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ChiragME] SET ARITHABORT OFF
GO
ALTER DATABASE [ChiragME] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ChiragME] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ChiragME] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ChiragME] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ChiragME] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ChiragME] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ChiragME] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ChiragME] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ChiragME] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ChiragME] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ChiragME] SET  DISABLE_BROKER
GO
ALTER DATABASE [ChiragME] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ChiragME] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ChiragME] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ChiragME] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ChiragME] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ChiragME] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ChiragME] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ChiragME] SET  READ_WRITE
GO
ALTER DATABASE [ChiragME] SET RECOVERY FULL
GO
ALTER DATABASE [ChiragME] SET  MULTI_USER
GO
ALTER DATABASE [ChiragME] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ChiragME] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChiragME', N'ON'
GO
USE [ChiragME]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/01/2015 11:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[User_id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Fname] [varchar](50) NULL,
	[Mname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Email] [varchar](100) NULL,
	[Contact] [varchar](10) NULL,
	[Balance] [money] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([User_id], [Username], [Password], [Fname], [Mname], [Lname], [Address], [Email], [Contact], [Balance]) VALUES (1, N'shailesh', N'shailesh', N'shailesh', N's', N'bhor', N'kjkljk', N'shailesh@gmail.com', N'8874787589', 78744.0000)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[SessionBinding]    Script Date: 12/01/2015 11:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SessionBinding](
	[sId] [int] IDENTITY(1,1) NOT NULL,
	[ipAddress] [varchar](50) NULL,
	[ASPNET_SessionId] [varchar](100) NULL,
	[PageUrl] [varchar](500) NULL,
	[OTC] [varchar](100) NULL,
	[Date] [datetime] NULL,
	[BrowserName] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesDetails]    Script Date: 12/01/2015 11:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesDetails](
	[SD_id] [int] IDENTITY(1,1) NOT NULL,
	[S_id] [int] NULL,
	[p_id] [int] NULL,
	[Price] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SalesDetails] ON
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (3, 3, 1, 6349)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (4, 3, 1, 6349)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (5, 3, 3, 14990)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (6, 4, 2, 15528)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (7, 4, 7, 26990)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (8, 5, 6, 36000)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (9, 6, 3, 14990)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (10, 6, 6, 36000)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (11, 7, 1, 6349)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (12, 7, 3, 14990)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (16, 10, 4, 6999)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (17, 11, 16, 150)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (18, 12, 4, 6999)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (19, 13, 21, 4730)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (13, 7, 6, 36000)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (14, 8, 11, 38690)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (15, 9, 1, 6349)
SET IDENTITY_INSERT [dbo].[SalesDetails] OFF
/****** Object:  Table [dbo].[Sales]    Script Date: 12/01/2015 11:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[S_id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [int] NULL,
	[Date] [date] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sales] ON
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (1, 1, CAST(0xF3390B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (2, 1, CAST(0xF4390B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (3, 1, CAST(0xF4390B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (4, 1, CAST(0xF7390B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (5, 1, CAST(0x313A0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (6, 1, CAST(0x313A0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (7, 1, CAST(0x313A0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (8, 1, CAST(0x313A0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (10, 1, CAST(0x323A0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (11, 1, CAST(0x323A0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (12, 1, CAST(0x323A0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (13, 1, CAST(0x383A0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (9, 1, CAST(0x313A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Sales] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 12/01/2015 11:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[P_Id] [int] IDENTITY(1,1) NOT NULL,
	[cId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [numeric](18, 2) NULL,
	[Photo] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (1, 1, N'Xolo Q1000', CAST(6349.00 AS Numeric(18, 2)), N'/ProductImages/Xolo-Win-Q1000.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (2, 1, N'HTC Desire 626', CAST(15528.00 AS Numeric(18, 2)), N'/ProductImages/HTC-Desire-626-g--SDL887272634-1-73687.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (3, 1, N'Samsung Galaxy Grand', CAST(14990.00 AS Numeric(18, 2)), N'/ProductImages/Samsung-Galaxy-Grand-Max-SDL021483758-1-9dcf3.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (4, 1, N'Redmi 2', CAST(6999.00 AS Numeric(18, 2)), N'/ProductImages/Xiaomi-Redmi2-SDL743521368-1-49d11.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (5, 1, N'Redmi Note 4G', CAST(9999.00 AS Numeric(18, 2)), N'/ProductImages/Xiaomi-Redmi-Note-4G-SDL815832131-1-a7df7.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (6, 2, N'Dell Optiplex 3020', CAST(36000.00 AS Numeric(18, 2)), N'/ProductImages/Dell-Optiplex-3020-Desktop-PC-SDL246928932-1-29455.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (7, 2, N'HP 20-2110', CAST(26990.00 AS Numeric(18, 2)), N'/ProductImages/HP-20-2110in-All-in-SDL945622199-1-534c5.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (8, 2, N'Lenovo C260', CAST(26999.00 AS Numeric(18, 2)), N'/ProductImages/Lenovo-C260-57328207-All-in-SDL714387358-1-872de.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (9, 2, N'LG Chromebase', CAST(26761.00 AS Numeric(18, 2)), N'/ProductImages/LG-Chromebase-White-22CV241-AIO-SDL906974973-1-e9eca.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (10, 2, N'Dell Inspiron 3647', CAST(23990.00 AS Numeric(18, 2)), N'/ProductImages/Dell-Inspiron-3647-Small-Desktop-SDL832365165-1-6d9b2.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (11, 3, N'Dell Inspiron 15 3543', CAST(38690.00 AS Numeric(18, 2)), N'/ProductImages/Dell-Inspiron-15-3543-Laptop-SDL631250200-1-20f14.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (12, 3, N'Lenovo G50', CAST(31280.00 AS Numeric(18, 2)), N'/ProductImages/Lenovo-G50-80E300RGIN-AMD-APU-SDL656836473-1-d9b88.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (13, 3, N'HP 15-r205TU', CAST(29390.00 AS Numeric(18, 2)), N'/ProductImages/HP-15-r205TU-Notebook-K8U05PA-SDL646517161-1-2658e.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (14, 3, N'HP Pavilion 15-p206TX', CAST(50500.00 AS Numeric(18, 2)), N'/ProductImages/HP-Pavilion-15-p206TX-Notebook-SDL141928696-1-c65a7.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (15, 3, N'Asus X555LA', CAST(38190.00 AS Numeric(18, 2)), N'/ProductImages/Asus-X555LA-XX688D-Notebook-90NB0652-SDL687874383-1-6145c.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (16, 4, N'Car Mobile Holder', CAST(150.00 AS Numeric(18, 2)), N'/ProductImages/mobile_Holder_2-20b75.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (17, 4, N'Car Body Cover', CAST(350.00 AS Numeric(18, 2)), N'/ProductImages/Autofact-Car-Body-Covers-Silver-SDL743529240-1-62c9c.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (18, 4, N'Wooden Gear Knob', CAST(300.00 AS Numeric(18, 2)), N'/ProductImages/SDL233793132_1390304449_image1-df218.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (19, 4, N'Micro Usb Adapter', CAST(300.00 AS Numeric(18, 2)), N'/ProductImages/Ezze-Shopping-Lightning-To-Micro-SDL609590859-1-b9154.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (20, 4, N'Scratch Repair Filler', CAST(140.00 AS Numeric(18, 2)), N'/ProductImages/Moko-Clear-Coat-Scratch-Repair-SDL641812950-1-4bf93.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (21, 5, N'Nikon Coolpix L30', CAST(4730.00 AS Numeric(18, 2)), N'/ProductImages/Nikon-Coolpix-L30-20-1-SDL426283149-1-331c6.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (22, 5, N'Nikon D5100', CAST(30000.00 AS Numeric(18, 2)), N'/ProductImages/Nikon-D5100-Black-DSLR-with-SDL263215211-3-5eed1.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (23, 6, N'Transcend MP350B', CAST(1200.00 AS Numeric(18, 2)), N'/ProductImages/Transcend-Digital-Music-Player-MP350B-SDL718383718-1-67d9c.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (24, 6, N'Fiio X1 High', CAST(7200.00 AS Numeric(18, 2)), N'/ProductImages/Fiio-X1-High-Resolution-Digital-SDL215509621-1-cdeb2.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (25, 6, N'Fiio X5 High', CAST(5500.00 AS Numeric(18, 2)), N'/ProductImages/Fiio-X5-High-Resolution-Portable-SDL945816777-1-0ea48.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (26, 6, N'Sony NWZ', CAST(4800.00 AS Numeric(18, 2)), N'/ProductImages/Sony-NWZ-E383-Red-Headphone-SDL871982494-1-40baf.jpg')
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (27, 6, N'Zebronics Stem', CAST(725.00 AS Numeric(18, 2)), N'/ProductImages/Zebronics-Stem-Mp3-Player-Red--SDL219639571-1-5468c.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Page_Details]    Script Date: 12/01/2015 11:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Page_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PageUri] [varchar](500) NULL,
	[Otc] [varchar](50) NULL,
	[Date_time] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Page_Details] ON
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (1, N'http://192.168.2.2/default.aspx', N'uuwanxcw3mm', CAST(0x0000A50800E2C261 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (2, N'http://192.168.2.2/Desktop.aspx', N'yxcgya0iwyp', CAST(0x0000A50800E2D5BE AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (3, N'http://192.168.2.2/Laptop.aspx', N'nuiqrcqbjrn', CAST(0x0000A50800E2E7C5 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (4, N'http://192.168.2.2/Accessories.aspx', N'0b14kfjtvma', CAST(0x0000A50800E2F1E1 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (5, N'http://192.168.2.2/MP3Players.aspx', N'5spvdcrtcll', CAST(0x0000A50800E342D2 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (6, N'http://192.168.2.2/Mobile.aspx', N'jn3g41xorf2', CAST(0x0000A50800E3AEB3 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (7, N'http://192.168.2.2/Accessories.aspx', N'p1oapxjbx2x', CAST(0x0000A50800E3BFDE AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (8, N'http://192.168.2.2/Accessories.aspx', N'1wmxxiw5mog', CAST(0x0000A50800E3DED9 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (9, N'http://192.168.2.2/Accessories.aspx', N'lp1bmoyn3qp', CAST(0x0000A50800E3F982 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (10, N'http://192.168.2.2/Desktop.aspx', N'u5mihp4ksmq', CAST(0x0000A50800E411CB AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (11, N'http://192.168.2.2/Laptop.aspx', N'dm0je4x0n1l', CAST(0x0000A50800E41C71 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (12, N'http://192.168.2.2/Accessories.aspx', N'ix4wt2hlee2', CAST(0x0000A50800E428FF AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (13, N'http://192.168.2.2/Accessories.aspx', N'u1sfx5ajw2z', CAST(0x0000A50800E45F82 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (14, N'http://192.168.2.2/Accessories.aspx', N'kui0vtvxw05', CAST(0x0000A50800E476D6 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (15, N'http://192.168.2.2/default.aspx', N'zmftpwgzabe', CAST(0x0000A50800E56851 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (16, N'http://192.168.2.2/Mobile.aspx', N'yw5immhmjnp', CAST(0x0000A50800E5717D AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (17, N'http://192.168.2.2/Accessories.aspx', N'f4vvbovfumg', CAST(0x0000A50800E57906 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (18, N'http://192.168.2.2/Camers.aspx', N'dlcqjx053um', CAST(0x0000A50800E58CA7 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (19, N'http://192.168.2.2/MP3Players.aspx', N'wbffwtwoxc2', CAST(0x0000A50800E596B7 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (20, N'http://192.168.2.2/Mobile.aspx', N'lcpjof2jaqb', CAST(0x0000A50800E5A523 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (21, N'http://192.168.2.2/MP3Players.aspx', N'qn2didmw5os', CAST(0x0000A50800E5B85F AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (22, N'http://192.168.2.2/Mobile.aspx', N'gblvwhf1fhc', CAST(0x0000A50800F28089 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (23, N'http://192.168.2.2/default.aspx', N'olosjzoaiif', CAST(0x0000A50801042666 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (24, N'http://192.168.2.2/Mobile.aspx', N'ih24rl11of0', CAST(0x0000A5080109291A AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (25, N'http://192.168.2.2/Laptop.aspx', N'wfrte1vjosd', CAST(0x0000A50801095367 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (26, N'http://192.168.2.2/Mobile.aspx', N'0grpa3zwi0x', CAST(0x0000A508010A12DC AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (27, N'http://192.168.2.2/default.aspx', N'2c0b2b33yyc', CAST(0x0000A508010C76DE AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (28, N'http://192.168.2.2/Mobile.aspx', N'2isb0hbzgxy', CAST(0x0000A508010CDC40 AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (29, N'http://192.168.2.2/Mobile.aspx', N'vqrgpvtgfrh', CAST(0x0000A508010D67BA AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (30, N'http://192.168.2.2/Desktop.aspx', N'im5dfihyl51', CAST(0x0000A508010D826C AS DateTime))
INSERT [dbo].[Page_Details] ([id], [PageUri], [Otc], [Date_time]) VALUES (31, N'http://192.168.2.2/default.aspx', N'glfc1pcxf5y', CAST(0x0000A50801102C58 AS DateTime))
SET IDENTITY_INSERT [dbo].[Page_Details] OFF
/****** Object:  Table [dbo].[Employee]    Script Date: 12/01/2015 11:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[E_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[FName] [varchar](50) NULL,
	[MName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Photo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([E_Id], [Username], [Password], [FName], [MName], [LName], [Email], [Phone], [Address], [Photo]) VALUES (1, N'shailesh', N'admin', N'shailesh', N's', N'bhor', N'shailesh@gmail.com', N'9865874787', N'sdds', N'~/Photo/4cbKRMKMi.png')
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 12/01/2015 11:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[cId] [int] IDENTITY(1,1) NOT NULL,
	[cName] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([cId], [cName]) VALUES (1, N'Mobile Phones')
INSERT [dbo].[Category] ([cId], [cName]) VALUES (2, N'Desktop')
INSERT [dbo].[Category] ([cId], [cName]) VALUES (3, N'Laptop')
INSERT [dbo].[Category] ([cId], [cName]) VALUES (4, N'Accessories')
INSERT [dbo].[Category] ([cId], [cName]) VALUES (5, N'Camers')
INSERT [dbo].[Category] ([cId], [cName]) VALUES (6, N'MP3 Players')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Cart]    Script Date: 12/01/2015 11:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Cart_id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [int] NULL,
	[P_id] [int] NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/01/2015 11:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[FName] [varchar](50) NULL,
	[MName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Photo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON
INSERT [dbo].[Admin] ([Id], [Username], [Password], [FName], [MName], [LName], [Email], [Phone], [Address], [Photo]) VALUES (1, N'admin', N'admin', N'admin', N'admin', N'admin', N'admin@gmail.com', N'7845789854', N'hghhggh', N'~/Photo/original.png')
SET IDENTITY_INSERT [dbo].[Admin] OFF
