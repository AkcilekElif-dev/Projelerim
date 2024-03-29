USE [master]
GO
/****** Object:  Database [LuxuryVacation]    Script Date: 2.08.2023 08:45:19 ******/
CREATE DATABASE [LuxuryVacation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LuxuryVacation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\LuxuryVacation.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LuxuryVacation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\LuxuryVacation_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [LuxuryVacation] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LuxuryVacation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LuxuryVacation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LuxuryVacation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LuxuryVacation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LuxuryVacation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LuxuryVacation] SET ARITHABORT OFF 
GO
ALTER DATABASE [LuxuryVacation] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LuxuryVacation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LuxuryVacation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LuxuryVacation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LuxuryVacation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LuxuryVacation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LuxuryVacation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LuxuryVacation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LuxuryVacation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LuxuryVacation] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LuxuryVacation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LuxuryVacation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LuxuryVacation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LuxuryVacation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LuxuryVacation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LuxuryVacation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LuxuryVacation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LuxuryVacation] SET RECOVERY FULL 
GO
ALTER DATABASE [LuxuryVacation] SET  MULTI_USER 
GO
ALTER DATABASE [LuxuryVacation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LuxuryVacation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LuxuryVacation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LuxuryVacation] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LuxuryVacation] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LuxuryVacation] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LuxuryVacation', N'ON'
GO
ALTER DATABASE [LuxuryVacation] SET QUERY_STORE = ON
GO
ALTER DATABASE [LuxuryVacation] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [LuxuryVacation]
GO
/****** Object:  Table [dbo].[Misafirler]    Script Date: 2.08.2023 08:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Misafirler](
	[MisafirID] [int] IDENTITY(1,1) NOT NULL,
	[MisafirAd] [nchar](50) NULL,
	[MisafirSoyad] [nchar](50) NULL,
	[MisafirTC] [int] NULL,
	[MisafirAdres] [varchar](50) NULL,
	[Otel] [varchar](50) NULL,
	[Fiyat] [int] NULL,
 CONSTRAINT [PK_Misafirler] PRIMARY KEY CLUSTERED 
(
	[MisafirID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uyelik]    Script Date: 2.08.2023 08:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyelik](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TC] [varchar](11) NULL,
	[AdSoyad] [varchar](50) NULL,
	[Kullanici] [varchar](50) NULL,
	[Sifre] [nchar](50) NULL,
	[SifreTekrar] [varchar](50) NULL,
 CONSTRAINT [PK_Uyelik] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Misafirler] ON 

INSERT [dbo].[Misafirler] ([MisafirID], [MisafirAd], [MisafirSoyad], [MisafirTC], [MisafirAdres], [Otel], [Fiyat]) VALUES (1, N'Elif                                              ', N'Akcilek                                           ', 15653514, N'Kücükyalı', N'Hilton', 12)
INSERT [dbo].[Misafirler] ([MisafirID], [MisafirAd], [MisafirSoyad], [MisafirTC], [MisafirAdres], [Otel], [Fiyat]) VALUES (2, N'Furkan                                            ', N'Urfalı                                            ', 153542563, N'Maltepe', N'Blue Town', 15)
INSERT [dbo].[Misafirler] ([MisafirID], [MisafirAd], [MisafirSoyad], [MisafirTC], [MisafirAdres], [Otel], [Fiyat]) VALUES (3, N'Barbaros                                          ', N'Urfalı                                            ', 6566464, N'İzmir', N'Daylight', 18)
INSERT [dbo].[Misafirler] ([MisafirID], [MisafirAd], [MisafirSoyad], [MisafirTC], [MisafirAdres], [Otel], [Fiyat]) VALUES (4, N'Elif                                              ', N'Akcilek                                           ', 15653514, N'Kücükyalı', N'Hilton', 11)
INSERT [dbo].[Misafirler] ([MisafirID], [MisafirAd], [MisafirSoyad], [MisafirTC], [MisafirAdres], [Otel], [Fiyat]) VALUES (5, N'Serap                                             ', N'Çelik                                             ', 46444, N'İzmir', N'Adin', 100)
SET IDENTITY_INSERT [dbo].[Misafirler] OFF
GO
SET IDENTITY_INSERT [dbo].[Uyelik] ON 

INSERT [dbo].[Uyelik] ([ID], [TC], [AdSoyad], [Kullanici], [Sifre], [SifreTekrar]) VALUES (1, N'4646', N'Elif', N'Kullanıcı Adı', N'123                                               ', N'123')
INSERT [dbo].[Uyelik] ([ID], [TC], [AdSoyad], [Kullanici], [Sifre], [SifreTekrar]) VALUES (2, N'5646546', N'elif', N'Kullanıcı Adı', N'123                                               ', N'123')
INSERT [dbo].[Uyelik] ([ID], [TC], [AdSoyad], [Kullanici], [Sifre], [SifreTekrar]) VALUES (3, N'5646546', N'elif', N'Kullanıcı Adı', N'123                                               ', N'123')
INSERT [dbo].[Uyelik] ([ID], [TC], [AdSoyad], [Kullanici], [Sifre], [SifreTekrar]) VALUES (4, N'46464', N'Serap Celik', N'Kullanıcı Adı', N'456                                               ', N'456')
SET IDENTITY_INSERT [dbo].[Uyelik] OFF
GO
/****** Object:  StoredProcedure [dbo].[MisafirAd]    Script Date: 2.08.2023 08:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[MisafirAd] 
@MisafirAd nchar(50)
as begin
select* from Misafirler where MisafirAd like '%'+@MisafirAd+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[MisafirSoyad]    Script Date: 2.08.2023 08:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MisafirSoyad]

@MisafirSoyad nchar(50)
as begin
select* from Misafirler where MisafirSoyad like '%'+@MisafirSoyad+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[MisafirTC]    Script Date: 2.08.2023 08:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MisafirTC]

@MisafirTC int

as begin
select* from Misafirler where MisafirTC=@MisafirTC
end
GO
/****** Object:  StoredProcedure [dbo].[OGuncelle]    Script Date: 2.08.2023 08:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[OGuncelle]
@MisafirID int,
@MisafirAd nchar(50),
@MisafirSoyad nchar(50),
@MisafirTC int,
@MisafirAdres varchar(50),
@Otel varchar(50),
@Fiyat int
as begin
update Misafirler set MisafirAd=@MisafirAd,MisafirSoyad=@MisafirSoyad,MisafirTC=@MisafirTC,MisafirAdres=@MisafirAdres,Otel =@Otel ,Fiyat=@Fiyat where MisafirID=@MisafirID
end
GO
/****** Object:  StoredProcedure [dbo].[OKaydet]    Script Date: 2.08.2023 08:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[OKaydet]

@TC  varchar(11),
@AdSoyad varchar(50),
@Kullanici varchar(50),
@Sifre varchar(50),
@SifreTekrar  varchar(50)
 as begin
 insert into Uyelik(TC,AdSoyad,Kullanici,Sifre,SifreTekrar) values(@TC,@AdSoyad,@Kullanici,@Sifre,@SifreTekrar)
 end
GO
/****** Object:  StoredProcedure [dbo].[OKaydetButton]    Script Date: 2.08.2023 08:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[OKaydetButton]
@MisafirAd nchar(50),
@MisafirSoyad nchar(50),
@MisafirTC int,
@MisafirAdres varchar(50),
@Otel varchar(50),
@Fiyat int
 as begin
 insert into Misafirler(MisafirAd ,MisafirSoyad,MisafirTC,MisafirAdres ,Otel ,Fiyat) values(@MisafirAd,@MisafirSoyad,@MisafirTC,@MisafirAdres,@Otel,@Fiyat)
 end
GO
/****** Object:  StoredProcedure [dbo].[OListele]    Script Date: 2.08.2023 08:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[OListele]
as begin
Select* from Misafirler
end
GO
USE [master]
GO
ALTER DATABASE [LuxuryVacation] SET  READ_WRITE 
GO
