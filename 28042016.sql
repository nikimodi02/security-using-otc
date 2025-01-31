USE [master]
GO
/****** Object:  Database [ChiragME]    Script Date: 04/28/2016 11:56:52 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 04/28/2016 11:56:53 ******/
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
INSERT [dbo].[Users] ([User_id], [Username], [Password], [Fname], [Mname], [Lname], [Address], [Email], [Contact], [Balance]) VALUES (1, N'shailesh', N'shailesh', N'shailesh', N's', N'bhor', N'kjkljk', N'shailesh@gmail.com', N'8874787589', 78019.0000)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[SessionBinding]    Script Date: 04/28/2016 11:56:53 ******/
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
SET IDENTITY_INSERT [dbo].[SessionBinding] ON
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (1, N'192.168.2.2', N'', N'http://192.168.2.2/default.aspx', N'bad6c335070748751290db6330265a9e99917045c6161a9dec13df12b7750554', CAST(0x0000A59600B0C7A1 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (2, N'192.168.2.2', N'ooc4h5yhicqfdxwgfqnjijet', N'http://192.168.2.2/Mobile.aspx', N'c4dae18ab041635f10ddb3d94db6c7de0ae881770439eba33e2dbe0ca3d6124b', CAST(0x0000A59600B0D2F3 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (3, N'192.168.2.2', N'ooc4h5yhicqfdxwgfqnjijet', N'http://192.168.2.2/Mobile.aspx', N'95913f725206d945ecd90fed39424aeb141b27390b1258497e025d5c203f20c8', CAST(0x0000A59600B0DE39 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (5, N'192.168.2.2', N'ooc4h5yhicqfdxwgfqnjijet', N'http://192.168.2.2/Login.aspx', N'7062dea8fd825acc3918379c870026747aebddcc53ee120323d6086077d871fa', CAST(0x0000A59600B35DB3 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (7, N'192.168.2.2', N'ooc4h5yhicqfdxwgfqnjijet', N'http://192.168.2.2/Login.aspx', N'7036a6ae39b1d474d46bd799647fcee8888151d8a378a770eff833776c387bea', CAST(0x0000A59600B3671E AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (8, N'192.168.2.2', N'ooc4h5yhicqfdxwgfqnjijet', N'http://192.168.2.2/default.aspx', N'9b942616639d393a9637773213f1de53ae5031918bc0834b4cdc81f6c5666178', CAST(0x0000A59600B373C1 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (10, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Login.aspx', N'09f979f2538e4d763b7bd46338700a51dfee17f59404a797c8091fd138573dac', CAST(0x0000A59600B37734 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (11, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Login.aspx', N'7048877de9bcfa0eb5cbdff920ffff230c7a95663c019e613ec417f7a823f109', CAST(0x0000A59600B37A2F AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (12, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Default.aspx', N'9c3d353078b8135133ef3c9b0cadd31817183e24f1bbed4ae0e6573c0a9e5ad9', CAST(0x0000A59600B37A36 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (13, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Cart.aspx', N'50b45002c413d63f325491b53d83ba4ef8ebfff361c9a4e837b0a396dc00d2e7', CAST(0x0000A59600B37C5A AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (14, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Mobile.aspx', N'4027a283bea101aaa80b4442cb56a772dad1986b7086790969eed5e97497525b', CAST(0x0000A59600B38135 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (20, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Login.aspx', N'478b0c4a92e696990d43f47f84aec113d8e506d9ae10bcd4b4156aa4acbbc1b2', CAST(0x0000A59600B3B896 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (21, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Login.aspx', N'66cd493ab174374ce0db999767fbb0d96f7aa7afbd342ee126aeaad5a5731f9b', CAST(0x0000A59600B3BC37 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (22, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Default.aspx', N'ee863b20a475189a0b0fc15843b9743b5a3f40d066fa1ff9170e5b304faa875a', CAST(0x0000A59600B3BC45 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (23, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Cart.aspx', N'd2e64614c6c72dcb274e96993f7d66e1361b0b9c20a3b02c0ac9e724b0aa63ae', CAST(0x0000A59600B3BDD0 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (30, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Login.aspx', N'f5c55dd436ef757727e1af4cd7edec87274ad765631557ed1bb5383542182bcd', CAST(0x0000A59600B8F0E8 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (26, N'www.shopping.com', N'', N'http://www.shopping.com/default.aspx', N'69bd0216b1673fecc8bbc9346e717e531516a4d68716c8719e2b0dbef31a307d', CAST(0x0000A59600B8AE83 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (31, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Login.aspx', N'd69099243d386b7d6d7c709845aaba78903f61876a3c6d9ad0b8f294733f085e', CAST(0x0000A59600B8F405 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (32, N'192.168.2.2', N'5bqtmvcgb4vuhln0pbyykfka', N'http://192.168.2.2/Default.aspx', N'745b4b10c601f31e9d42a6737c1d9c8e23a194ad53962afc0caeb5fc94e10042', CAST(0x0000A59600B8F40F AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (33, N'192.168.2.2', N'', N'http://192.168.2.2/default.aspx', N'36492e006e740baa114e219303511e4c04511e006147403d9187de7afebaf7da', CAST(0x0000A59600C0EBD1 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (37, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Login.aspx', N'fc19072223ed80c8202b30d72bda873ef0d445075e555e25cd50ecee2fe3946f', CAST(0x0000A59600C1482F AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (38, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Login.aspx', N'0e22ed4cf673d0dea07e1ad61158d73aa1e746af47bc3c8554cce99bc5c2cc6d', CAST(0x0000A59600C15108 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (39, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Default.aspx', N'6395b4705aeb919c49583a9d54aef41eafdd5f0c49e840922181e4f757169385', CAST(0x0000A59600C151B5 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (40, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Cart.aspx', N'bc26123393d772f407c061b0f5c23faa290c4c479bbcd9a38388aced7a094b57', CAST(0x0000A59600C158E8 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (41, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Mobile.aspx', N'80fafc31611b79d3ad6224755efde98756c4e278915333d848ef9ba303977efe', CAST(0x0000A59600C16C56 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (42, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Camers.aspx', N'590e0332bd23a0cc78127f2d53bcd327b291033c4c02611e68eeaa80e36b6372', CAST(0x0000A59600C17140 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (45, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Cart.aspx', N'0772e82dd1f0b265ac01589ca0120fb4f9969c26dd89c96ff51dd4c0609f21ad', CAST(0x0000A59600C17D96 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (46, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Cart.aspx', N'59e8957e48263b9473b127f2c59b747063289d3546debcce157f2c2b082d190d', CAST(0x0000A59600C1846A AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (47, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Cart.aspx', N'5e62c0a220fdc274cf8a58e596b0bb497b00474b370e0e7f75f17b2db7a13d09', CAST(0x0000A59600C184A1 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (48, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Cart.aspx', N'e2784bd56299fe57f08b249dca740243efd3c0fe1c77a940c5ce37662fd1b5d0', CAST(0x0000A59600C22243 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (49, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Login.aspx', N'ed8e4f934fe20d237cbc18c86db10f6233070c1046089985b0e9b86218c08a56', CAST(0x0000A59600C22254 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (50, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Cart.aspx', N'66e831a2259e99ba276a5d0ecb6fad0822af131287ad2b1467fd43e9ed3d7791', CAST(0x0000A59600C36CF3 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (51, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Cart.aspx', N'8554c4b539e9016a492f72f59eb0b612eddcc3545261d51a95b214599b58e81f', CAST(0x0000A59600C7C0D5 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (52, N'192.168.2.2', N'oxlo5hfye5khapovjeg5naur', N'http://192.168.2.2/Login.aspx', N'b6a3e54709b675656a859ce478e0c28553b54451676c3b8ef5e06ac600d13304', CAST(0x0000A59600C7C0E9 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (93, N'192.168.2.2', N'', N'http://192.168.2.2/home.aspx', N'df3ad931aa357ecec0b335e7ffa48ea573bac3de19a4ad1a488bdb0fa5593a34', CAST(0x0000A5A400D7B8B5 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (53, N'192.168.2.2', N'', N'http://192.168.2.2/default.aspx', N'191e120b77b65075262fa3bbc406db1079228f22a6a939c6e240214b5379d1c2', CAST(0x0000A59600D610AC AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (55, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Login.aspx', N'fd95a47523a48f4da7ebb5f5d168f7756558a6ff2f268065b1589c869fb13c1e', CAST(0x0000A59600D61446 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (56, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Login.aspx', N'07beea3ed09c8ba675d0730b13946113ccb5fc5ff1f16c8e8391f77737f67e49', CAST(0x0000A59600D616D0 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (58, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Default.aspx', N'3b1f195fadf53f66bdb024bfa2ef53e995a17d573f5db8218a69f46e6aa12ac0', CAST(0x0000A59600D629DA AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (60, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Login.aspx', N'8ecc6d7921ac4a1dc2195676b0117576b33f14f5641d3d10d3de7cc36bb5905d', CAST(0x0000A59600D62D49 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (61, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Login.aspx', N'bcce79e697907dc4aee51654b7e4a52f1a5eff986ace0c16b78cacadd506e518', CAST(0x0000A59600D62EB1 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (62, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Default.aspx', N'033fd94660dd611603902f6c616941a9f54cc26e349c9bd0b99f5d7efd752b0e', CAST(0x0000A59600D62ECE AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (63, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Desktop.aspx', N'6eb53928f3bdc0c25c79f888595a0086334f2979836b040c4359ef907d7134f9', CAST(0x0000A59600D63047 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (64, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Cart.aspx', N'66253bc2f74e29ef02ad867c517d0b9af7b42eb81054f6184f3c5c727f848fef', CAST(0x0000A59600D633E0 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (65, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Mobile.aspx', N'e2873c5fb94f44c834ccc0b27bba22630b35921c3fda7464a51e8cbe77cebaa3', CAST(0x0000A59600D636C6 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (66, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Cart.aspx', N'db4406903af033a56a641177030e007bed0574d56f8efd9a98a2469509186954', CAST(0x0000A59600D637ED AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (67, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Accessories.aspx', N'9d699a2858fce5c1a669f7a4b7fc434052f0e1c63c9161a8370614f48c7e499f', CAST(0x0000A59600D63A8D AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (70, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Default.aspx', N'5a9035b775c4ebe9d5286702e5dae53d25db1aab836f4d3b59dd10c7df4968b5', CAST(0x0000A59600D648A4 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (72, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Login.aspx', N'cd59b54eff8edd80a061be4db0b31415aa20fd5d20055396ce973b2a927294b5', CAST(0x0000A59600D64B32 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (73, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Login.aspx', N'd37e1bafa5b84774418838763a0a6a18b01ef0f7d7afb434f46103e76a4240fe', CAST(0x0000A59600D65276 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (76, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Cart.aspx', N'b99a6199dfb1dec74d27b535ea9183efcadfd26e407dc70941d6f30b37ac984d', CAST(0x0000A59600D65EB6 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (78, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Login.aspx', N'38456678a4c32488aaf80f5fb725a401fc82fe931a574cc0abc4728d3184494a', CAST(0x0000A59600D66209 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (79, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Login.aspx', N'8d6edd48381285395cce3e686406aa5b29d886869aafd2ea94304956bc57e968', CAST(0x0000A59600D665AB AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (80, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Default.aspx', N'a15a9c8c5d5d4b777080cce47f1c6ce8e77bc336a08aaeb878d369cf6d6f91d5', CAST(0x0000A59600D665B0 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (81, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Cart.aspx', N'7b4b12205115c4e9f1346867b29b434a6657d452b2a033fe8c7b15aca9f51c59', CAST(0x0000A59600D669FE AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (82, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Cart.aspx', N'09126356e04a18747991f42bf763c513b0821fe6c170d1a547222d15666acfce', CAST(0x0000A59600D66C52 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (83, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Cart.aspx', N'641930d6ebbda5e3ef27bbc7e9ab8293fc50e4bea8486ab77d9a686c547fcde7', CAST(0x0000A59600D66F3C AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (84, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Desktop.aspx', N'3ea9f938fbce143d5a85c073491240f115ab36061754a21f52e1a101c5dc1dd0', CAST(0x0000A59600D67205 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (85, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/MP3Players.aspx', N'e3c90cbc8626b5234874521fd010b35750280af13ca819552e98286238657320', CAST(0x0000A59600D675BD AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (88, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Cart.aspx', N'1e43f61f8586452423228a5aa0e2c41f69d44cfe0e43c000a8f52679e24b3211', CAST(0x0000A59600D68399 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (90, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Login.aspx', N'2e8da467624da51abdde274353baa50fa5ce72604cf256aac6882640813ba23c', CAST(0x0000A59600D686DD AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (91, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Login.aspx', N'883543752a012b8c5d9775406c3c77d2d0f6a7042b290fc3ee0e9c177487491b', CAST(0x0000A59600D68AAC AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (92, N'192.168.2.2', N'vywkai1zwgaletvukftwlseb', N'http://192.168.2.2/Default.aspx', N'598fb2c5f5125bba29911da22e0f0799e2f584d28848b710359e4eb36fd4e368', CAST(0x0000A59600D68ACC AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (94, N'192.168.2.2', N'', N'http://192.168.2.2/default.aspx', N'3c303137421a4ecce2b7ed8774e78fa3795f979ce6c2abeb6559a208fc870642', CAST(0x0000A5A400DBE2C7 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (104, N'192.168.2.2', N'', N'http://192.168.2.2/default.aspx', N'd56b34dd498c94213069ff00d31191a587c6677ee2a7f3d23a9f15cdbf79db81', CAST(0x0000A5A400E521FD AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (108, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/default.aspx', N'854b7606811716a3e91c4b95cc9db043a86af4a1a9e1d3cf4065ceec29e9ad57', CAST(0x0000A5A400E52CBE AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (109, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/default.aspx', N'551410dacd0a006e372c4bd5a50e783b590013a46efe2f27bd89559dc763db13', CAST(0x0000A5A400E52CEA AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (111, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/Login.aspx', N'ec7668c2609cebf8f02fa4f91a1d90b124b955ce19a6942862f2fd4aa66d19d4', CAST(0x0000A5A400E535AA AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (112, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/Login.aspx', N'40610dd5035703c6fc3235caad40e80f2de30a933c0b8009ce5e64955c8c9132', CAST(0x0000A5A400E549A8 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (113, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/Default.aspx', N'e694adb01417679059cd1aef42a50ee63d19144744ce81ef25a5fb89d149abbe', CAST(0x0000A5A400E549C6 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (97, N'192.168.2.2', N'g4idablmtcye3twg5zrml5fv', N'http://192.168.2.2/Login.aspx', N'f84f0559acadadb8fd60f1a636d25992783a7cbd32a8c1757543dc9167a77dea', CAST(0x0000A5A400DC8328 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (98, N'192.168.2.2', N'g4idablmtcye3twg5zrml5fv', N'http://192.168.2.2/Login.aspx', N'c689231cb88c87012a9902358160cd1d3b822922acab5135f40d293d90a0100b', CAST(0x0000A5A400DC9128 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (99, N'192.168.2.2', N'g4idablmtcye3twg5zrml5fv', N'http://192.168.2.2/Default.aspx', N'3e5083fcae1edce98ae581fb566ce2640c7f6d780ce68882b1c328e3016ba4b3', CAST(0x0000A5A400DC915E AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (100, N'192.168.2.2', N'g4idablmtcye3twg5zrml5fv', N'http://192.168.2.2/Desktop.aspx', N'00a4ae1581c894b1e1acb12dc258fb40341186beb15be6c7d3628ade2f5ff64f', CAST(0x0000A5A400DC9B80 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (101, N'192.168.2.2', N'g4idablmtcye3twg5zrml5fv', N'http://192.168.2.2/Desktop.aspx', N'b2a6fe6d77580c60613b938baa9f4fee135c2736cfeb19f5cbdc4918c3a06689', CAST(0x0000A5A400DCA627 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (102, N'192.168.2.2', N'g4idablmtcye3twg5zrml5fv', N'http://192.168.2.2/default.aspx', N'377868c688256a058fd8a4d7e5061a4c44013a30352d2a23b90203d8517f434d', CAST(0x0000A5A400DCBC46 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (103, N'192.168.2.2', N'g4idablmtcye3twg5zrml5fv', N'http://192.168.2.2/default.aspx', N'e8532fcebaa8dbd2b45db0fda57ca268961f581244f96f83a5937d489d1e3d31', CAST(0x0000A5A400DCC78B AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (114, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/Laptop.aspx', N'9671e35284d057573292caeebac696b9a4ec6dbccd6221438e60b5fa60c18547', CAST(0x0000A5A400E550FA AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (115, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/Cart.aspx', N'c604feddfda1dad73ae57aa678fda1d7fc4f80c0471d6e42afa4277dcb69d0f6', CAST(0x0000A5A400E55981 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (116, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/Camers.aspx', N'0aa63f00ac4f8f9c839eb37feed9586d9e76e2b60bb46edb3377948ddbe08b8e', CAST(0x0000A5A400E56CFD AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (117, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/Camers.aspx', N'9cf833f259200389f62b35384e281005c689d36213d8dcd9bd1c1e4cfdc91cf7', CAST(0x0000A5A400E59A3B AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (125, N'192.168.2.2', N'xpno5skq0kydyz1w2zgfminu', N'http://192.168.2.2/Laptop.aspx', N'e5be75a83f13086ea618283d6dd8845c091c0bfa9af874e0bed8709fdfa5be29', CAST(0x0000A5A400F56D14 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (127, N'192.168.2.2', N'xpno5skq0kydyz1w2zgfminu', N'http://192.168.2.2/Login.aspx', N'89145bad1e457a65e9e058ee63b7816bbc543160fb961c32a70057da1e132627', CAST(0x0000A5A400F59E24 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (128, N'192.168.2.2', N'xpno5skq0kydyz1w2zgfminu', N'http://192.168.2.2/Login.aspx', N'5fd3384f370a858677579def757b5b375d4485c585bcc9c95e1b20ce07c34a34', CAST(0x0000A5A400F5A999 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (139, N'192.168.2.2', N'', N'http://192.168.2.2/default.aspx', N'1ff6a3a6cec38e54ace3c571ac56ed446947e5bb526e8a482eafd0d298f73976', CAST(0x0000A5A4010F006B AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (150, N'192.168.2.2', N'', N'http://192.168.2.2/default.aspx', N'b30f92f6cb33a6f190bc08b3e5d713510d9c6887f914270db8ee83eb48aca403', CAST(0x0000A5A600C2B4BF AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (151, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Mobile.aspx', N'd1ad3a818a63fcab821e20991bec1689993514c760251b1d1f194c4a6c263d6c', CAST(0x0000A5A600C2DB73 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (153, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Login.aspx', N'8437f76262f0a75e08fe62fc5559a6a85604658c1aedd686095a6d56721a20bd', CAST(0x0000A5A600C2E017 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (154, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Login.aspx', N'52764c9a9771e42cd98e34f0e63326532f73fa4428039ffd11e0e9de4dea06d8', CAST(0x0000A5A600C2E38F AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (155, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Default.aspx', N'555a3cc85699a7acb588c66c48f1e474d7a0c4b408f7eab6c5737830667c02ff', CAST(0x0000A5A600C2E3A5 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (156, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Desktop.aspx', N'a5e038647a7c7ceb920508bb3e33eff6842866a80c1792e48b247619f607c45d', CAST(0x0000A5A600C2E80A AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (157, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Mobile.aspx', N'1d485d61f9994c5bec255738e7fac4c0fcc183c2d06b8f381a0f85b962720bad', CAST(0x0000A5A600C2EC4A AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (158, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Cart.aspx', N'671c4cc8e73337f4d6b3dea301a6ee5f316b1631d05b54ec9a89f72c8f99d0e8', CAST(0x0000A5A600C2F028 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (159, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Cart.aspx', N'5acf9349f96f20eea72ca928162d0d8173df6157455992a4a32216aefd2ed33f', CAST(0x0000A5A600C2F45E AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (160, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Cart.aspx', N'a67f15cc35744eb67bb0a203a48c659109f10a4b3845d476987cef1124783947', CAST(0x0000A5A600C2F467 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (161, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Desktop.aspx', N'd26d4f56400637c05154f9e5c2de3070d244dc8b1f578a36121d3d6f460f2466', CAST(0x0000A5A600C2F77E AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (162, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Desktop.aspx', N'21de1602fbf4263b3863ef4de3886573e9ae07aaa5e2292ff9031c837d3bb0d3', CAST(0x0000A5A600C2FBCD AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (163, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Camers.aspx', N'111af161b2ec8df5dfe37852cc32221d7889f9a0a001e6a474e8ad6c61548c7e', CAST(0x0000A5A600C2FDD5 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (164, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/MP3Players.aspx', N'e50f78284919f410b8529e61f17d90acdd5ec7565c9aa49a915b8f357bfb3355', CAST(0x0000A5A600C30184 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (167, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Cart.aspx', N'5c5df7b804378ad18d667778b36aa05614d791b778f4ea3413bb35642510f599', CAST(0x0000A5A600C3252B AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
GO
print 'Processed 100 total records'
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (168, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Cart.aspx', N'10f9e73f2dcf2f65e90bb677f6ee63ca3beacb735d2830bce33e4b7f039cde7b', CAST(0x0000A5A600C34A39 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (169, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Login.aspx', N'e78f81a8f700ea0d56734f2a26f42dbd604e4c05f07373c51f113fd949bce09a', CAST(0x0000A5A600C34A71 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (170, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Cart.aspx', N'600e2654b20ae54ad0b96ad32852638d7f89e881bb04bfcb6ab9100dd80cf8d9', CAST(0x0000A5A600C35ACD AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (171, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Login.aspx', N'bcee50d3e5f4f76ac5acaeca97870b53717e8c2e7731e34f50a9062cbdee0390', CAST(0x0000A5A600C35AD4 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (172, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Login.aspx', N'a83aa120cdc5f4116998542392d0b982fcca8eb769247ae0054331110de32631', CAST(0x0000A5A600C35D8D AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (118, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/Mobile.aspx', N'a58ad0cd331869c514000799d6c3eca30f3e446043ccac37b388b1ffe6779c24', CAST(0x0000A5A400E7246D AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (119, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/Desktop.aspx', N'ee0d3ebc1579c0598ee7a4625d90bb33f113afe57e261c5067fa0c2c39554e6a', CAST(0x0000A5A400E801E5 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (120, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/default.aspx', N'9a0ddc4bbab88b19a5735c62bbd945b7d9e4fd758f97cdc389be2c7ca566b1d6', CAST(0x0000A5A400E80496 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (121, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/default.aspx', N'c441c6cfdfc97d4a0b4c3d4d217e7b126ece655717e18f00004d4c2ed5cdc711', CAST(0x0000A5A400E821D4 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (122, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/default.aspx', N'b24da30c6a82c4cee0a35cb86e49af7c6096dd23931ab226d30924c7beca7377', CAST(0x0000A5A400E838E1 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (123, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/default.aspx', N'2a1784a8e817d9ae9af859dfeecb89d6c2f77334fd301e282133de2a00328956', CAST(0x0000A5A400E858EE AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (124, N'192.168.2.2', N'5yr0mzc11fl115xgu3i0bbns', N'http://192.168.2.2/default.aspx', N'dcfd818db29337c68897854f1cc4c3af0f965f1d08f74f2a55bf120bf0953f7b', CAST(0x0000A5A400E863D6 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (133, N'192.168.2.2', N'xpno5skq0kydyz1w2zgfminu', N'http://192.168.2.2/Login.aspx', N'5768a8d562215a26fb4feed76e29d0b6f73b075940b54e675df3bb39bc935e8a', CAST(0x0000A5A400F71D01 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (134, N'192.168.2.2', N'xpno5skq0kydyz1w2zgfminu', N'http://192.168.2.2/Login.aspx', N'b30ccbc4688fbeb061d90602413684cfa40f450495601ef5398290c3dfeadfd6', CAST(0x0000A5A400F72338 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (135, N'192.168.2.2', N'xpno5skq0kydyz1w2zgfminu', N'http://192.168.2.2/Default.aspx', N'71b9fddba33b45d25253830ccc16609a4778e24f323be4abc07c5a5798358c45', CAST(0x0000A5A400F7251E AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (136, N'192.168.2.2', N'xpno5skq0kydyz1w2zgfminu', N'http://192.168.2.2/Mobile.aspx', N'094cce8d38ee6fde20302f9cda77138e4e1900c3c7da6bb59b5733a1f8942990', CAST(0x0000A5A400F72D3B AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (137, N'192.168.2.2', N'xpno5skq0kydyz1w2zgfminu', N'http://192.168.2.2/Desktop.aspx', N'23283bd60cd3c1a06f7249351709fc6e820fdcc4c210559cbff87bf8b3f64b22', CAST(0x0000A5A400F734A3 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (138, N'192.168.2.2', N'xpno5skq0kydyz1w2zgfminu', N'http://192.168.2.2/Desktop.aspx', N'6ae1f79321462b81513aa9fb5f0d772ba49162dcdb91c7f13eb65a0a2a678f4f', CAST(0x0000A5A400F7481A AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (142, N'192.168.2.2', N'z012udip12dperiwk5uadjwz', N'http://192.168.2.2/Login.aspx', N'79b8830ffe0c95edc4e6f6db4c7897adb0aececb24706c9c528d22eea9a6efad', CAST(0x0000A5A40111A1A4 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (143, N'192.168.2.2', N'z012udip12dperiwk5uadjwz', N'http://192.168.2.2/Login.aspx', N'24eaf026c4ce75bbbdb64adbeab1832a4c5718932dfc4e37ed44b80608161332', CAST(0x0000A5A40111A724 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (144, N'192.168.2.2', N'z012udip12dperiwk5uadjwz', N'http://192.168.2.2/Default.aspx', N'2ccf0b7904fbff997613a31a85079a1cfaa4f10ae2ebe6912ea48435fe8ed492', CAST(0x0000A5A40111A75B AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (145, N'192.168.2.2', N'z012udip12dperiwk5uadjwz', N'http://192.168.2.2/Desktop.aspx', N'288a93598ff25c9aabc66d9a74b8b7f1d187b22d1f5a71d9a7a0f3e1073393d6', CAST(0x0000A5A40111AC86 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (146, N'192.168.2.2', N'z012udip12dperiwk5uadjwz', N'http://192.168.2.2/Camers.aspx', N'715ac235e50c1bcc925438f3a400468b5a66d31cff0accaa4114779865209763', CAST(0x0000A5A40111B2E9 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (147, N'192.168.2.2', N'z012udip12dperiwk5uadjwz', N'http://192.168.2.2/Mobile.aspx', N'e4ccb7801b8e126568ef7f8bd89720c41df846cfdd2106878ca77ce0434d8e24', CAST(0x0000A5A401125733 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (148, N'192.168.2.2', N'z012udip12dperiwk5uadjwz', N'http://192.168.2.2/Camers.aspx', N'b7827b22d78816f5444fef517e8903b55424ad68e639e74e4d3c6e3401f2bd6e', CAST(0x0000A5A40112768C AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (149, N'192.168.2.2', N'z012udip12dperiwk5uadjwz', N'http://192.168.2.2/Mobile.aspx', N'caa68de36906ac18bebbd419d4423625c54a94b45d5fdb626eeb22f90097c788', CAST(0x0000A5A40112A028 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (173, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Default.aspx', N'570e8b1b5d4db3a3e2ac858f15671bd6c07a3385ba1a9086c681c1d49ca02cd7', CAST(0x0000A5A600C35D9A AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (174, N'192.168.2.2', N'pbpkdvlh31axz0evetzyedib', N'http://192.168.2.2/Laptop.aspx', N'0fa947696a3496a6a252065d7c14b27cc4af814509ca4edc0bef423cfd37d6b0', CAST(0x0000A5A600C361C8 AS DateTime), N'fb7b204dd4d7ee83bf6b542faa2ab2870a25b5e5b237d467fd59e9efd8e2e201')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (175, N'192.168.2.2', N'', N'http://192.168.2.2/default.aspx', N'3e1300dd8915f8fec6286c2633080046027453a791fdf41bd10c5bab36ec10f5', CAST(0x0000A5F600C2822E AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (181, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Desktop.aspx', N'2872c3d63af66c5a8eaafadafef82bc0e9314ffa688d5620990ad078bdce6349', CAST(0x0000A5F600C29FBD AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (183, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Login.aspx', N'acdc66934651ab6232579e82708731ab93bf75b0d6ce7c47931a8c2f833087fb', CAST(0x0000A5F600C2ACF3 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (184, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Login.aspx', N'1d4dc41ab15b6be34fe201cdb5645f91ac0bb538c384e839095cf2f97a6ab120', CAST(0x0000A5F600C2AF48 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (185, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Default.aspx', N'8f734a7885efdce794a424e9d265a6cdc73a70abffa84ee87d84cc33ad274ddb', CAST(0x0000A5F600C2AF50 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (186, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Desktop.aspx', N'e2fe0c574fbec3208bad68281c4308468210f799ca53139fd56616e563ed8922', CAST(0x0000A5F600C2B354 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (187, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Accessories.aspx', N'2ca50f167912d38cdd91d09fde86b444fbabc82098c221bdbbb37ee1365f1e8f', CAST(0x0000A5F600C2B829 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (188, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Camers.aspx', N'7b1caddeebd92846cec1e73d22847c1463b0c1bdd7b7aaf0b13eec0da0e4f237', CAST(0x0000A5F600C2BE21 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (189, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/MP3Players.aspx', N'3a739481a62a70dc8a2b132e455a7e7246e370b4353c57f625a01553484f06fd', CAST(0x0000A5F600C2C21E AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (190, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Mobile.aspx', N'c5cb00bda80b8db2adc8463cf503f142c051e8009e10294467f5affd5727d3d6', CAST(0x0000A5F600C2C8F1 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (191, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/MP3Players.aspx', N'a9f7130a4489383604d38f32f1b55db67de36eb68d6411c0dc0efb9834b1f2e6', CAST(0x0000A5F600C2E269 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (192, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Accessories.aspx', N'a7215bd2ac89a31062ed992c578ec8ec2db856817d4f106583fed2162c857bce', CAST(0x0000A5F600C2E8C5 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (193, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Laptop.aspx', N'693557a99d5de2c01ccbf83b4457084710e906b496a971920d5de5a62097ba6f', CAST(0x0000A5F600C2ED2D AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (194, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Laptop.aspx', N'fbf01b50b290074902bccc3a2ba62f0941b687013f0d91066051b712323d4ae0', CAST(0x0000A5F600C2F1A2 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (195, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Laptop.aspx', N'bedebeae468a7ffb0c7e7da4ec46cff34c6634ea4b5e8ba48d326891f952b827', CAST(0x0000A5F600C2FE7B AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (196, N'192.168.2.2', N'k1swng5m1uso0fvx3s0v34dz', N'http://192.168.2.2/Laptop.aspx', N'14ba42a3c693114e7402c316e8842dd9f10a10dabb3dec2180b06793710eb02e', CAST(0x0000A5F600C36C48 AS DateTime), N'38c9657a4f524dc5ae30ce2acee3f26a0beb99ef14fb0f2e42b61335219a576d')
SET IDENTITY_INSERT [dbo].[SessionBinding] OFF
/****** Object:  Table [dbo].[SalesDetails]    Script Date: 04/28/2016 11:56:53 ******/
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
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (20, 14, 27, 725)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (13, 7, 6, 36000)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (14, 8, 11, 38690)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (15, 9, 1, 6349)
SET IDENTITY_INSERT [dbo].[SalesDetails] OFF
/****** Object:  Table [dbo].[Sales]    Script Date: 04/28/2016 11:56:53 ******/
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
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (14, 1, CAST(0xF13A0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (9, 1, CAST(0x313A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Sales] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 04/28/2016 11:56:53 ******/
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
/****** Object:  Table [dbo].[Page_Details]    Script Date: 04/28/2016 11:56:53 ******/
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
/****** Object:  Table [dbo].[Employee]    Script Date: 04/28/2016 11:56:53 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 04/28/2016 11:56:53 ******/
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
/****** Object:  Table [dbo].[Cart]    Script Date: 04/28/2016 11:56:53 ******/
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
SET IDENTITY_INSERT [dbo].[Cart] ON
INSERT [dbo].[Cart] ([Cart_id], [User_id], [P_id], [Date]) VALUES (92, 1, 19, CAST(0x0000A5A600000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Cart] OFF
/****** Object:  Table [dbo].[Admin]    Script Date: 04/28/2016 11:56:53 ******/
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
