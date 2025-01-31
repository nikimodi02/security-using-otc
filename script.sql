USE [master]
GO
/****** Object:  Database [ChiragME]    Script Date: 07/22/2020 17:00:05 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 07/22/2020 17:00:06 ******/
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
INSERT [dbo].[Users] ([User_id], [Username], [Password], [Fname], [Mname], [Lname], [Address], [Email], [Contact], [Balance]) VALUES (1, N'shailesh', N'shailesh', N'shailesh', N's', N'bhor', N'kjkljk', N'shailesh@gmail.com', N'8874787589', 12853.0000)
INSERT [dbo].[Users] ([User_id], [Username], [Password], [Fname], [Mname], [Lname], [Address], [Email], [Contact], [Balance]) VALUES (2, N'chintan', N'chintan', N'chintan', N'p', N'p', N'aaa', N'chintan.parekh99@gmail.com', N'9999999999', 12860.0000)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[SessionBinding]    Script Date: 07/22/2020 17:00:06 ******/
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
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (28, N'192.168.2.2', N'qpuxffdsnjpxq0e3nj2245mz', N'http://192.168.2.2/Login.aspx', N'a2be0fcc872e6c125274ca7340b14636b8c200a583084766ee379dec151f29bb', CAST(0x0000A90A00CCF7A2 AS DateTime), N'99f6f82d0a54890a5b36ba01f0e8a1179f8f27f8df14a936056aa3435ff787c2')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (53, N'192.168.3.2:8080', N'x0hevn14q5ix45n1bksx5bpj', N'http://192.168.3.2:8080/Desktop.aspx', N'7b2e41716e8eebb2bdf31421186d1d12f87c302b3921177ffb8ddb96e571ac50', CAST(0x0000A9740101103C AS DateTime), N'b27feb47e288a0f74caaa4d8c3d789122c8f80892974146e87d27b43e4ad17fc')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (55, N'192.168.3.2:8080', N'x0hevn14q5ix45n1bksx5bpj', N'http://192.168.3.2:8080/Login.aspx', N'2c948afbf9d9a7ad8c51b0e944b6d1708f9395dc979b11c4a3532c26a72640ff', CAST(0x0000A97401011233 AS DateTime), N'b27feb47e288a0f74caaa4d8c3d789122c8f80892974146e87d27b43e4ad17fc')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (56, N'detectportal.firefox.com', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/home.aspx', N'aa6a9d4cc33114592e5f101480294a1cbca1f6540f22e1b7ce20b521b0fa6f48', CAST(0x0000AC0000F78541 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (57, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Accessories.aspx', N'6af913b566745d5d7ae287486e7525d2980d165b77aacf9d78481d2b832cbe0a', CAST(0x0000AC0000F7B8DC AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (59, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Login.aspx', N'c6d00a157b3163ba2fe0873e37f8c1775a48527e6c99a093506d97c418f30084', CAST(0x0000AC0000F7C6C6 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (61, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Default.aspx', N'd183a10f1f68bf06bc1e1e623299cd27fb7db86afab7d45436965444a0365de3', CAST(0x0000AC0000F7D5C8 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (63, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Login.aspx', N'c3f13a3deb14411657c315e022eb0baef74d342534931721d512a22f3b4247a8', CAST(0x0000AC0000F819BC AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (68, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Login.aspx', N'5190c58761c32c3a69fb138243376137c9af7bf9e6e7b360391584882589760b', CAST(0x0000AC000113DFD3 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (69, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Login.aspx', N'cf9271c0b880347516fdf2cad86d7d79b868afa1f5692ac0a931e19761689098', CAST(0x0000AC0001141D73 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (70, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Default.aspx', N'77616b40961de219523b7000a2abe73d43809562640a8649b5bbd6ac2e032972', CAST(0x0000AC0001141D81 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (75, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Desktop.aspx', N'dbcf0f779876979321256828c40fd2a6e5be2eea30e59783e70016ac7b3aa82d', CAST(0x0000AC000114BF13 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (81, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Login.aspx', N'91c426356e7327a51aafd46cd600866f8ea5ca108b4e45193af0c4a80671919b', CAST(0x0000AC000115A513 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (83, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Login.aspx', N'acde51774fabb9af1159a9b92cab6720df0e2eb44586ed0572977c6af5bfdea6', CAST(0x0000AC000115AA86 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (85, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Login.aspx', N'8cff6eeb98b79ab18cd24e7e8df3b09fb6a50a7b9a879a758122025e35eb8e8a', CAST(0x0000AC000115AC55 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (86, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Login.aspx', N'1079642623f30b6fa529599fdb934678be8671e767844f2cd50e0a0d2ffdb0fc', CAST(0x0000AC000115B7D0 AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (87, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Default.aspx', N'f52af3c29c86189aab6deb06037d578f7a20f264940d5a00a3b8100cb41cd9ef', CAST(0x0000AC000115B7DE AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (88, N'192.168.3.2:8080', N'4r4pu334jw3nt3s0wwn0nklz', N'http://192.168.3.2:8080/Camers.aspx', N'b8a8b37caf065a284671d2a59df371a36c1d3d2ff657555bf924df0d4954659c', CAST(0x0000AC000115BBAB AS DateTime), N'164f028d77d68d9f334403533f2df835cb8b439a2e21d384cfb19f41bfebc73f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (38, N'detectportal.firefox.com', N'rmjapoeb34vginavsyforrm5', N'http://192.168.2.2/Login.aspx', N'9c86e0adce1292020860312e134241210c8b3941a44361a43cb1fc31f35dde29', CAST(0x0000A90A00D07D4F AS DateTime), N'da055efd06102f7f8dcd396eaf54a26c7ccb51eef93f18260ca69eaa27cb9f1f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (43, N'detectportal.firefox.com', N'rmjapoeb34vginavsyforrm5', N'http://192.168.2.2/Login.aspx', N'1d67fcb8ee04e798564f7e4ab580b0460c5dd5f29698fa423852115bf93d05c0', CAST(0x0000A90A00D15721 AS DateTime), N'da055efd06102f7f8dcd396eaf54a26c7ccb51eef93f18260ca69eaa27cb9f1f')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (44, N'192.168.2.2', N'', N'http://192.168.2.2/Default.aspx', N'8912bd420fa6f5f3a6e35901d7f1574f04c65a3df14af5e1d6b2d46e7cf117a2', CAST(0x0000A90A0110213B AS DateTime), N'99f6f82d0a54890a5b36ba01f0e8a1179f8f27f8df14a936056aa3435ff787c2')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (45, N'192.168.2.2', N'ptw5mhf5h2cg0nlvpup3lpzg', N'http://192.168.2.2/Desktop.aspx', N'5c3a4072c34dbae2552d4d861bb3c97ddc24d0787342ea089ec160e8439be8fc', CAST(0x0000A90A01103BEC AS DateTime), N'99f6f82d0a54890a5b36ba01f0e8a1179f8f27f8df14a936056aa3435ff787c2')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (46, N'192.168.2.2', N'ptw5mhf5h2cg0nlvpup3lpzg', N'http://192.168.2.2/Cart.aspx', N'228454244fae3c1ad6e7e4c8c62205d8aa5b11bf66c05d9a4fec00725129e186', CAST(0x0000A90A0110AC3D AS DateTime), N'99f6f82d0a54890a5b36ba01f0e8a1179f8f27f8df14a936056aa3435ff787c2')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (47, N'192.168.2.2', N'ptw5mhf5h2cg0nlvpup3lpzg', N'http://192.168.2.2/Cart.aspx', N'72075358f0b2d6d10b909fa9ec6fe07b28007cfe07af60f786a20be4eb173a4e', CAST(0x0000A90A0110BE2A AS DateTime), N'99f6f82d0a54890a5b36ba01f0e8a1179f8f27f8df14a936056aa3435ff787c2')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (48, N'192.168.2.2', N'ptw5mhf5h2cg0nlvpup3lpzg', N'http://192.168.2.2/Laptop.aspx', N'981a1219eb0a22955f0fa28d05bdc28209c6ff5fdd5ea615a2edcb0f6a490fa5', CAST(0x0000A90A0110C95D AS DateTime), N'99f6f82d0a54890a5b36ba01f0e8a1179f8f27f8df14a936056aa3435ff787c2')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (49, N'192.168.2.2', N'ptw5mhf5h2cg0nlvpup3lpzg', N'http://192.168.2.2/Cart.aspx', N'c9eeafc36492b09a5733cf78a7d9ec88469faf570882fc50ada877238867fb46', CAST(0x0000A90A0110D554 AS DateTime), N'99f6f82d0a54890a5b36ba01f0e8a1179f8f27f8df14a936056aa3435ff787c2')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (50, N'192.168.2.2', N'ptw5mhf5h2cg0nlvpup3lpzg', N'http://192.168.2.2/Cart.aspx', N'e2fea487bde3ccb0b2bc9970a07001433dcad03b6d887f55e1ff726a04f09830', CAST(0x0000A90A011100A4 AS DateTime), N'99f6f82d0a54890a5b36ba01f0e8a1179f8f27f8df14a936056aa3435ff787c2')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (51, N'192.168.2.2', N'ptw5mhf5h2cg0nlvpup3lpzg', N'http://192.168.2.2/Camers.aspx', N'ea4c3b1c20dbb3191f63fd38e10ecd6e27e3938597e5095b7a034899a9d3f4a2', CAST(0x0000A90A01115587 AS DateTime), N'99f6f82d0a54890a5b36ba01f0e8a1179f8f27f8df14a936056aa3435ff787c2')
INSERT [dbo].[SessionBinding] ([sId], [ipAddress], [ASPNET_SessionId], [PageUrl], [OTC], [Date], [BrowserName]) VALUES (52, N'192.168.2.2', N'ptw5mhf5h2cg0nlvpup3lpzg', N'http://192.168.2.2/Cart.aspx', N'4b8f70afd8a2ac667764a5b76802be7784ab5ab99cb7edace472adf7d5a464ef', CAST(0x0000A90A011165AB AS DateTime), N'99f6f82d0a54890a5b36ba01f0e8a1179f8f27f8df14a936056aa3435ff787c2')
SET IDENTITY_INSERT [dbo].[SessionBinding] OFF
/****** Object:  Table [dbo].[SalesDetails]    Script Date: 07/22/2020 17:00:06 ******/
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
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (21, 15, 2, 15528)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (22, 16, 1, 6349)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (23, 17, 2, 15528)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (24, 18, 7, 26990)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (25, 19, 24, 7200)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (26, 20, 21, 4730)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (27, 21, 21, 4730)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (28, 22, 2, 15528)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (29, 22, 4, 6999)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (30, 23, 1, 6349)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (31, 23, 12, 31280)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (32, 24, 7, 26990)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (33, 25, 11, 38690)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (34, 25, 11, 38690)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (35, 25, 18, 300)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (36, 25, 21, 4730)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (13, 7, 6, 36000)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (14, 8, 11, 38690)
INSERT [dbo].[SalesDetails] ([SD_id], [S_id], [p_id], [Price]) VALUES (15, 9, 1, 6349)
SET IDENTITY_INSERT [dbo].[SalesDetails] OFF
/****** Object:  Table [dbo].[Sales]    Script Date: 07/22/2020 17:00:06 ******/
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
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (15, 1, CAST(0x4B3C0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (16, 1, CAST(0x4B3C0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (17, 1, CAST(0x4B3C0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (18, 1, CAST(0x933C0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (19, 1, CAST(0xCD3C0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (20, 1, CAST(0xE83C0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (21, 2, CAST(0xE83C0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (22, 1, CAST(0x613E0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (23, 1, CAST(0x613E0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (24, 1, CAST(0x613E0B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (25, 2, CAST(0x5B410B00 AS Date))
INSERT [dbo].[Sales] ([S_id], [User_id], [Date]) VALUES (9, 1, CAST(0x313A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Sales] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 07/22/2020 17:00:06 ******/
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
INSERT [dbo].[Product] ([P_Id], [cId], [Name], [Price], [Photo]) VALUES (28, 5, N'TEST_NEW', CAST(5000.00 AS Numeric(18, 2)), N'/ProductImages/Project-ideas-logo.png')
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Page_Details]    Script Date: 07/22/2020 17:00:06 ******/
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
/****** Object:  Table [dbo].[OTPDetails]    Script Date: 07/22/2020 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OTPDetails](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[otp] [nvarchar](100) NULL,
	[date] [datetime] NULL,
	[andro_otp] [nvarchar](100) NULL,
	[andro_date] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OTPDetails] ON
INSERT [dbo].[OTPDetails] ([oid], [userid], [otp], [date], [andro_otp], [andro_date]) VALUES (1, 1, N'eThCZvVi', CAST(0x0000A73700000000 AS DateTime), N'null', CAST(0x0000000000000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[OTPDetails] OFF
/****** Object:  Table [dbo].[Employee]    Script Date: 07/22/2020 17:00:06 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 07/22/2020 17:00:06 ******/
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
/****** Object:  Table [dbo].[Cart]    Script Date: 07/22/2020 17:00:06 ******/
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
INSERT [dbo].[Cart] ([Cart_id], [User_id], [P_id], [Date]) VALUES (136, 1, 6, CAST(0x0000A90A00000000 AS DateTime))
INSERT [dbo].[Cart] ([Cart_id], [User_id], [P_id], [Date]) VALUES (135, 1, 17, CAST(0x0000A90600000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Cart] OFF
/****** Object:  Table [dbo].[Admin]    Script Date: 07/22/2020 17:00:06 ******/
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
