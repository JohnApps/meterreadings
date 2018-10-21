USE [meterReadings]
GO

/****** Object:  Table [dbo].[pump$]    Script Date: 2018-10-18 12:21:58 ******/
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

