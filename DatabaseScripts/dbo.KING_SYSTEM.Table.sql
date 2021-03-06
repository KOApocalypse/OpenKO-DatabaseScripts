USE [KN_online]
GO
/****** Object:  Table [dbo].[KING_SYSTEM]    Script Date: 09/09/2016 04:14:40 ******/
ALTER TABLE [dbo].[KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_byNoahEvent]
GO
ALTER TABLE [dbo].[KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_byExpEvent]
GO
ALTER TABLE [dbo].[KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_nTribute]
GO
ALTER TABLE [dbo].[KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_byTerritoryTariff]
GO
ALTER TABLE [dbo].[KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_nTerritoryTax]
GO
ALTER TABLE [dbo].[KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_nNationalTreasury]
GO
DROP TABLE [dbo].[KING_SYSTEM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KING_SYSTEM](
	[byNation] [tinyint] NOT NULL,
	[byType] [tinyint] NOT NULL,
	[sYear] [smallint] NOT NULL,
	[byMonth] [tinyint] NOT NULL,
	[byDay] [tinyint] NOT NULL,
	[byHour] [tinyint] NOT NULL,
	[byMinute] [tinyint] NOT NULL,
	[byImType] [tinyint] NOT NULL,
	[sImYear] [smallint] NOT NULL,
	[byImMonth] [tinyint] NOT NULL,
	[byImDay] [tinyint] NOT NULL,
	[byImHour] [tinyint] NOT NULL,
	[byImMinute] [tinyint] NOT NULL,
	[byNoahEvent] [tinyint] NOT NULL CONSTRAINT [DF_KING_SYSTEM_byNoahEvent]  DEFAULT ((0)),
	[byNoahEvent_Day] [tinyint] NOT NULL,
	[byNoahEvent_Hour] [tinyint] NOT NULL,
	[byNoahEvent_Minute] [tinyint] NOT NULL,
	[sNoahEvent_Duration] [smallint] NOT NULL,
	[byExpEvent] [tinyint] NOT NULL CONSTRAINT [DF_KING_SYSTEM_byExpEvent]  DEFAULT ((0)),
	[byExpEvent_Day] [tinyint] NOT NULL,
	[byExpEvent_Hour] [tinyint] NOT NULL,
	[byExpEvent_Minute] [tinyint] NOT NULL,
	[sExpEvent_Duration] [smallint] NOT NULL,
	[nTribute] [int] NOT NULL CONSTRAINT [DF_KING_SYSTEM_nTribute]  DEFAULT ((0)),
	[byTerritoryTariff] [tinyint] NOT NULL CONSTRAINT [DF_KING_SYSTEM_byTerritoryTariff]  DEFAULT ((0)),
	[nTerritoryTax] [int] NOT NULL CONSTRAINT [DF_KING_SYSTEM_nTerritoryTax]  DEFAULT ((0)),
	[nNationalTreasury] [int] NOT NULL CONSTRAINT [DF_KING_SYSTEM_nNationalTreasury]  DEFAULT ((0)),
	[strKingName] [varchar](21) NULL,
	[strImRequestID] [varchar](21) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KING_SYSTEM] ([byNation], [byType], [sYear], [byMonth], [byDay], [byHour], [byMinute], [byImType], [sImYear], [byImMonth], [byImDay], [byImHour], [byImMinute], [byNoahEvent], [byNoahEvent_Day], [byNoahEvent_Hour], [byNoahEvent_Minute], [sNoahEvent_Duration], [byExpEvent], [byExpEvent_Day], [byExpEvent_Hour], [byExpEvent_Minute], [sExpEvent_Duration], [nTribute], [byTerritoryTariff], [nTerritoryTax], [nNationalTreasury], [strKingName], [strImRequestID]) VALUES (1, 7, 2012, 12, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 40700, 40700, NULL, NULL)
INSERT [dbo].[KING_SYSTEM] ([byNation], [byType], [sYear], [byMonth], [byDay], [byHour], [byMinute], [byImType], [sImYear], [byImMonth], [byImDay], [byImHour], [byImMinute], [byNoahEvent], [byNoahEvent_Day], [byNoahEvent_Hour], [byNoahEvent_Minute], [sNoahEvent_Duration], [byExpEvent], [byExpEvent_Day], [byExpEvent_Hour], [byExpEvent_Minute], [sExpEvent_Duration], [nTribute], [byTerritoryTariff], [nTerritoryTax], [nNationalTreasury], [strKingName], [strImRequestID]) VALUES (2, 4, 2012, 12, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 31070, 31070, N'test', NULL)
