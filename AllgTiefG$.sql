USE [meterReadings]
GO

/****** Object:  Table [dbo].[AllgTiefG$]    Script Date: 2018-10-18 12:21:20 ******/
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

