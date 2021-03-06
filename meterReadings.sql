USE [master]
GO
/****** Object:  Database [meterReadings]    Script Date: 2018-10-18 12:35:43 ******/
CREATE DATABASE [meterReadings]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'meterReadings_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\meterReadings_Data.mdf' , SIZE = 12032KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'meterReadings_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\meterReadings_Log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 1024KB )
GO
ALTER DATABASE [meterReadings] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [meterReadings].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [meterReadings] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [meterReadings] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [meterReadings] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [meterReadings] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [meterReadings] SET ARITHABORT OFF 
GO
ALTER DATABASE [meterReadings] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [meterReadings] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [meterReadings] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [meterReadings] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [meterReadings] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [meterReadings] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [meterReadings] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [meterReadings] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [meterReadings] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [meterReadings] SET  DISABLE_BROKER 
GO
ALTER DATABASE [meterReadings] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [meterReadings] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [meterReadings] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [meterReadings] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [meterReadings] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [meterReadings] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [meterReadings] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [meterReadings] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [meterReadings] SET  MULTI_USER 
GO
ALTER DATABASE [meterReadings] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [meterReadings] SET DB_CHAINING OFF 
GO
ALTER DATABASE [meterReadings] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [meterReadings] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [meterReadings] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [meterReadings] SET QUERY_STORE = OFF
GO
USE [meterReadings]
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
USE [meterReadings]
GO
/****** Object:  User [WinniesAcerPC\SQLserver]    Script Date: 2018-10-18 12:35:43 ******/
CREATE USER [WinniesAcerPC\SQLserver] FOR LOGIN [WinniesAcerPC\SQLserver] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sqlserver1]    Script Date: 2018-10-18 12:35:43 ******/
CREATE USER [sqlserver1] FOR LOGIN [NT Service\MSSQL$SQLEXPRESS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[pump$]    Script Date: 2018-10-18 12:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pump$](
	[DateFull] [datetime] NULL,
	[DateShort] [datetime] NULL,
	[Month] [nvarchar](255) NULL,
	[Meter181] [float] NULL,
	[ConKW181] [float] NULL,
	[Meter182] [float] NULL,
	[ConKW182] [float] NULL,
	[TotalKW] [float] NULL,
	[TotalHours] [datetime] NULL,
	[TotalMinutes] [float] NULL,
	[KWhour] [float] NULL,
	[CostHour] [float] NULL,
	[ExactNoDays] [float] NULL,
	[ConKW181Day] [float] NULL,
	[ConKW12Day] [float] NULL,
	[TotalKWDay] [float] NULL,
	[TotalCostDay] [money] NULL,
	[DWDTemp] [float] NULL,
	[MittelTemp] [float] NULL,
	[Weekday] [nvarchar](255) NULL,
	[Heizgrenze] [float] NULL,
	[Brauchwasser] [float] NULL,
	[MetersTotal]  AS ([Meter181]+[Meter182])
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllDataLWP$]    Script Date: 2018-10-18 12:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllDataLWP$](
	[Start] [datetime] NULL,
	[Modus] [nvarchar](255) NULL,
	[Laenge] [datetime] NULL,
	[Pause] [datetime] NULL,
	[TVL] [float] NULL,
	[TRL] [float] NULL,
	[SpHZ] [float] NULL,
	[TWQein] [float] NULL,
	[TWQaus] [float] NULL,
	[SpWQ] [float] NULL,
	[TA] [float] NULL,
	[DateShort] [datetime] NULL,
	[LaengeMM] [float] NULL,
	[PauseMM] [float] NULL,
	[MisnGrad] [float] NULL,
	[TempMittel] [float] NULL,
	[Heizgrenze] [float] NULL,
	[Brauchwasser] [float] NULL,
	[Tempavg]  AS (([TempMittel]+[TA])/(2))
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Pump-LWP-V]    Script Date: 2018-10-18 12:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Pump-LWP-V]
AS
SELECT        dbo.AllDataLWP$.DateShort, dbo.pump$.TotalKW, dbo.AllDataLWP$.Modus, dbo.AllDataLWP$.LaengeMM, dbo.AllDataLWP$.TempMittel, dbo.AllDataLWP$.TVL, dbo.AllDataLWP$.TRL, dbo.AllDataLWP$.Start AS DateFull, 
                         dbo.AllDataLWP$.TA, dbo.pump$.TotalCostDay, dbo.pump$.TotalKWDay, dbo.AllDataLWP$.Tempavg
FROM            dbo.AllDataLWP$ LEFT OUTER JOIN
                         dbo.pump$ ON dbo.AllDataLWP$.DateShort = dbo.pump$.DateShort
GROUP BY dbo.AllDataLWP$.DateShort, dbo.pump$.TotalKW, dbo.AllDataLWP$.Modus, dbo.AllDataLWP$.LaengeMM, dbo.AllDataLWP$.TempMittel, dbo.AllDataLWP$.TVL, dbo.AllDataLWP$.TRL, dbo.AllDataLWP$.Start, 
                         dbo.AllDataLWP$.TA, dbo.pump$.TotalCostDay, dbo.pump$.TotalKWDay, dbo.AllDataLWP$.Tempavg
HAVING        (dbo.AllDataLWP$.TA > 0) AND (dbo.pump$.TotalKWDay > 0)
GO
/****** Object:  Table [dbo].[AllgTiefG$]    Script Date: 2018-10-18 12:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllgTiefG$](
	[DateFull] [datetime] NULL,
	[Month] [nvarchar](255) NULL,
	[AllgMeter] [float] NULL,
	[ConAllg] [float] NULL,
	[CpnAllgNoRampe] [float] NULL,
	[TotaKW] [float] NULL,
	[TotalHours] [datetime] NULL,
	[TotalMinutes] [float] NULL,
	[NoDaysExact] [float] NULL,
	[KWDay] [float] NULL,
	[KWDayNoRampe] [float] NULL,
	[KWDayCost] [money] NULL,
	[KWHour] [float] NULL,
	[CostHour] [money] NULL,
	[DWDtemp] [float] NULL,
	[TiefGRampe] [float] NULL,
	[ConTiefGRampe] [float] NULL,
	[DateShort] [datetime] NULL,
	[Tag] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mitteltemperatur$]    Script Date: 2018-10-18 12:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mitteltemperatur$](
	[DateShort] [datetime] NULL,
	[ TempMittel] [float] NULL,
	[DateFull] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[weather$]    Script Date: 2018-10-18 12:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[weather$](
	[DateShort] [datetime] NULL,
	[SunHours] [float] NULL,
	[TempMin] [float] NULL,
	[TempMid] [float] NULL,
	[TempMax] [float] NULL,
	[RainMM] [float] NULL,
	[Snow] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[woog$]    Script Date: 2018-10-18 12:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[woog$](
	[DateFull] [datetime] NULL,
	[Month] [nvarchar](255) NULL,
	[WoogMeter] [float] NULL,
	[ConWoog] [float] NULL,
	[TotalHours] [datetime] NULL,
	[TotalMinutes] [float] NULL,
	[NoDaysExact] [float] NULL,
	[kWhDay] [float] NULL,
	[CostPerDay] [float] NULL,
	[KWperHour] [float] NULL,
	[CostPerHour] [float] NULL,
	[DWDtemp] [float] NULL,
	[DateShort] [datetime] NULL,
	[Tag] [nvarchar](255) NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[35] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "AllDataLWP$"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 337
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "pump$"
            Begin Extent = 
               Top = 0
               Left = 721
               Bottom = 287
               Right = 955
            End
            DisplayFlags = 280
            TopColumn = 9
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1395
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 3705
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Pump-LWP-V'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Pump-LWP-V'
GO
USE [master]
GO
ALTER DATABASE [meterReadings] SET  READ_WRITE 
GO
