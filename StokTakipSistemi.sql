USE [master]
GO
/****** Object:  Database [StokTakipSistemi]    Script Date: 1.05.2022 06:29:08 ******/
CREATE DATABASE [StokTakipSistemi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StokTakipSistemi7', FILENAME = N'C:\Databases\Database\StokTakipSistemi7.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StokTakipSistemi7_log', FILENAME = N'C:\Databases\Database\StokTakipSistemi7_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StokTakipSistemi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StokTakipSistemi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StokTakipSistemi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET ARITHABORT OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StokTakipSistemi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StokTakipSistemi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StokTakipSistemi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StokTakipSistemi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StokTakipSistemi] SET  MULTI_USER 
GO
ALTER DATABASE [StokTakipSistemi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StokTakipSistemi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StokTakipSistemi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StokTakipSistemi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StokTakipSistemi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StokTakipSistemi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [StokTakipSistemi] SET QUERY_STORE = OFF
GO
USE [StokTakipSistemi]
GO
/****** Object:  Table [dbo].[Stok]    Script Date: 1.05.2022 06:29:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stok](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MalzemeAdi] [nvarchar](50) NOT NULL,
	[StokAdedi] [int] NOT NULL,
	[BirimFiyat] [money] NOT NULL,
 CONSTRAINT [PK_Stok] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Stok] ON 

INSERT [dbo].[Stok] ([Id], [MalzemeAdi], [StokAdedi], [BirimFiyat]) VALUES (1, N'Kalem', 100, 1.5000)
INSERT [dbo].[Stok] ([Id], [MalzemeAdi], [StokAdedi], [BirimFiyat]) VALUES (2, N'Silgi', 20, 1.5000)
INSERT [dbo].[Stok] ([Id], [MalzemeAdi], [StokAdedi], [BirimFiyat]) VALUES (4, N'Kalem', 50, 1.5000)
INSERT [dbo].[Stok] ([Id], [MalzemeAdi], [StokAdedi], [BirimFiyat]) VALUES (5, N'Kağıt', 10, 1.3000)
INSERT [dbo].[Stok] ([Id], [MalzemeAdi], [StokAdedi], [BirimFiyat]) VALUES (7, N'Faber Castel', 112, 1.6200)
INSERT [dbo].[Stok] ([Id], [MalzemeAdi], [StokAdedi], [BirimFiyat]) VALUES (8, N'Kale', 10, 1.1000)
INSERT [dbo].[Stok] ([Id], [MalzemeAdi], [StokAdedi], [BirimFiyat]) VALUES (9, N'Kitap', 55, 3.0000)
SET IDENTITY_INSERT [dbo].[Stok] OFF
GO
USE [master]
GO
ALTER DATABASE [StokTakipSistemi] SET  READ_WRITE 
GO
