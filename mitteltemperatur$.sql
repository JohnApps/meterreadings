USE [meterReadings]
GO

/****** Object:  Table [dbo].[mitteltemperatur$]    Script Date: 2018-10-18 12:21:42 ******/
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

