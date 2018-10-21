USE [allMetersLWP]
GO

/****** Object:  Table [dbo].[woog$]    Script Date: 2018-10-18 12:22:22 ******/
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

