USE [allMetersLWP]
GO

/****** Object:  Table [dbo].[weather$]    Script Date: 2018-10-18 12:22:10 ******/
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

