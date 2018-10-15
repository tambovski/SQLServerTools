USE [master]
GO

-- =============================================================================================================
-- Author:		Permitin Y.A. (ypermitin@yandex.ru)
-- Create date: 2018-10-15
-- Description:	Скрипт для создания служебной базы данных
-- =============================================================================================================
CREATE DATABASE [ExtendedSettingsFor1C]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ExtendedSettingsFor1C', FILENAME = N'D:\DBs\ExtendedSettingsFor1C.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ExtendedSettingsFor1C_log', FILENAME = N'D:\DBs\ExtendedSettingsFor1C_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExtendedSettingsFor1C].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET ARITHABORT OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET RECOVERY FULL 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET  MULTI_USER 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET QUERY_STORE = OFF
GO

USE [ExtendedSettingsFor1C]
GO

ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [ExtendedSettingsFor1C] SET  READ_WRITE 
GO


