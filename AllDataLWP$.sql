USE [allMetersLWP]
GO

/****** Object:  Table [dbo].[AllDataLWP$]    Script Date: 2018-10-18 12:19:11 ******/
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


