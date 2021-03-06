USE [master]
GO
/****** Object:  Database [ISE302039]    Script Date: 26.06.2020 18:59:10 ******/
CREATE DATABASE [ISE302039]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ISE302039', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ISE302039.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ISE302039_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ISE302039_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ISE302039] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ISE302039].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ISE302039] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ISE302039] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ISE302039] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ISE302039] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ISE302039] SET ARITHABORT OFF 
GO
ALTER DATABASE [ISE302039] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ISE302039] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ISE302039] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ISE302039] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ISE302039] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ISE302039] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ISE302039] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ISE302039] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ISE302039] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ISE302039] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ISE302039] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ISE302039] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ISE302039] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ISE302039] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ISE302039] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ISE302039] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ISE302039] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ISE302039] SET RECOVERY FULL 
GO
ALTER DATABASE [ISE302039] SET  MULTI_USER 
GO
ALTER DATABASE [ISE302039] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ISE302039] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ISE302039] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ISE302039] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ISE302039] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ISE302039', N'ON'
GO
ALTER DATABASE [ISE302039] SET QUERY_STORE = OFF
GO
USE [ISE302039]
GO
/****** Object:  Table [dbo].[Urun$]    Script Date: 26.06.2020 18:59:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun$](
	[SatısID] [float] NOT NULL,
	[TipID] [float] NULL,
	[Tarih] [datetime] NULL,
	[SehirId] [float] NULL,
	[Miktar] [float] NULL,
	[Kar] [money] NULL,
 CONSTRAINT [PK_Urun$] PRIMARY KEY CLUSTERED 
(
	[SatısID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunSehir$]    Script Date: 26.06.2020 18:59:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunSehir$](
	[SehirID] [float] NOT NULL,
	[SehirAdi] [nvarchar](255) NULL,
	[SemtAdi] [nvarchar](255) NULL,
 CONSTRAINT [PK_UrunSehir$] PRIMARY KEY CLUSTERED 
(
	[SehirID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunTip$]    Script Date: 26.06.2020 18:59:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunTip$](
	[TipID] [float] NOT NULL,
	[UrunKategoriAdi] [nvarchar](255) NULL,
 CONSTRAINT [PK_UrunTip$] PRIMARY KEY CLUSTERED 
(
	[TipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (1, 5, CAST(N'2020-05-12T00:00:00.000' AS DateTime), 1, 56, 8900.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (2, 8, CAST(N'2020-05-13T00:00:00.000' AS DateTime), 5, 12, 6300.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (3, 3, CAST(N'2020-05-14T00:00:00.000' AS DateTime), 11, 98, 400.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (4, 10, CAST(N'2020-05-15T00:00:00.000' AS DateTime), 14, 12, 3200.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (5, 9, CAST(N'2020-05-16T00:00:00.000' AS DateTime), 12, 87, 5100.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (6, 2, CAST(N'2020-05-17T00:00:00.000' AS DateTime), 3, 2, 800.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (7, 7, CAST(N'2020-05-18T00:00:00.000' AS DateTime), 9, 36, 7000.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (8, 6, CAST(N'2020-05-19T00:00:00.000' AS DateTime), 6, 45, 2300.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (9, 10, CAST(N'2020-05-20T00:00:00.000' AS DateTime), 5, 96, 6900.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (10, 4, CAST(N'2020-05-21T00:00:00.000' AS DateTime), 7, 789, 580.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (11, 1, CAST(N'2020-05-22T00:00:00.000' AS DateTime), 15, 25, 6350.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (12, 3, CAST(N'2020-05-23T00:00:00.000' AS DateTime), 10, 36, 8400.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (13, 5, CAST(N'2020-05-24T00:00:00.000' AS DateTime), 6, 8, 300.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (14, 9, CAST(N'2020-05-25T00:00:00.000' AS DateTime), 7, 56, 780.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (15, 4, CAST(N'2020-05-26T00:00:00.000' AS DateTime), 13, 45, 4500.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (16, 2, CAST(N'2020-05-27T00:00:00.000' AS DateTime), 5, 23, 6300.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (17, 6, CAST(N'2020-05-28T00:00:00.000' AS DateTime), 1, 69, 960.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (18, 7, CAST(N'2020-05-29T00:00:00.000' AS DateTime), 3, 5, 3100.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (19, 10, CAST(N'2020-05-30T00:00:00.000' AS DateTime), 8, 54, 2000.0000)
INSERT [dbo].[Urun$] ([SatısID], [TipID], [Tarih], [SehirId], [Miktar], [Kar]) VALUES (20, 9, CAST(N'2020-05-31T00:00:00.000' AS DateTime), 4, 11, 880.0000)
GO
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (1, N'Istanbul', N'Esenler')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (2, N'Ankara', N'Yenimahalle')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (3, N'Bursa', N'Orhangazi')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (4, N'Eskisehir', N'Odunpazari')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (5, N'Sakarya', N'Serdivan')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (6, N'İzmir', N'Foca')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (7, N'Mugla', N'Bodrum')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (8, N'Kocaeli', N'Izmit')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (9, N'Kutahya', N'Simav')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (10, N'Istanbul', N'Bagcilar')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (11, N'Bursa', N'Yıldırım')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (12, N'Sakarya', N'Adapazari')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (13, N'Bolu', N'Abant')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (14, N'Ankara', N'Esenboga')
INSERT [dbo].[UrunSehir$] ([SehirID], [SehirAdi], [SemtAdi]) VALUES (15, N'Istanbul', N'Pendik')
GO
INSERT [dbo].[UrunTip$] ([TipID], [UrunKategoriAdi]) VALUES (1, N'Ayakkabi')
INSERT [dbo].[UrunTip$] ([TipID], [UrunKategoriAdi]) VALUES (2, N'Elektronik')
INSERT [dbo].[UrunTip$] ([TipID], [UrunKategoriAdi]) VALUES (3, N'Mobilya')
INSERT [dbo].[UrunTip$] ([TipID], [UrunKategoriAdi]) VALUES (4, N'Dekorasyon')
INSERT [dbo].[UrunTip$] ([TipID], [UrunKategoriAdi]) VALUES (5, N'Kozmetik')
INSERT [dbo].[UrunTip$] ([TipID], [UrunKategoriAdi]) VALUES (6, N'Kırtasiye')
INSERT [dbo].[UrunTip$] ([TipID], [UrunKategoriAdi]) VALUES (7, N'Mutfak')
INSERT [dbo].[UrunTip$] ([TipID], [UrunKategoriAdi]) VALUES (8, N'Bebek')
INSERT [dbo].[UrunTip$] ([TipID], [UrunKategoriAdi]) VALUES (9, N'Organizasyon')
INSERT [dbo].[UrunTip$] ([TipID], [UrunKategoriAdi]) VALUES (10, N'Oyuncak')
GO
USE [master]
GO
ALTER DATABASE [ISE302039] SET  READ_WRITE 
GO
