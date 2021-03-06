USE [KN_online]
GO
/****** Object:  Table [dbo].[KNIGHTS_SIEGE_WARFARE]    Script Date: 09/09/2016 04:14:42 ******/
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sChallengeList_7]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sChallengeList_8]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sChallengeList_9]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sChallengeList_10]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byWarRequestDay]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byWarRequestTime]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byWarRequestMinute]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byGuerrillaWarDay]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byGuerrillaWarTime]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byGuerrillaWarMinute]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sMoradonTariff_1]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sDellosTariff_1]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_nDungeonCharge_2]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_nMoradonTax_1]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_nDellosTax_2]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_1_1]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_2]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_3]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_4]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_5]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_6]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_7]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_8]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_9]
GO
ALTER TABLE [dbo].[KNIGHTS_SIEGE_WARFARE] DROP CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_10]
GO
DROP TABLE [dbo].[KNIGHTS_SIEGE_WARFARE]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNIGHTS_SIEGE_WARFARE](
	[sCastleIndex] [smallint] NOT NULL,
	[sMasterKnights] [smallint] NOT NULL,
	[bySiegeType] [tinyint] NOT NULL,
	[byWarDay] [tinyint] NOT NULL,
	[byWarTime] [tinyint] NOT NULL,
	[byWarMinute] [tinyint] NOT NULL,
	[sChallengeList_1] [smallint] NOT NULL,
	[sChallengeList_2] [smallint] NOT NULL,
	[sChallengeList_3] [smallint] NOT NULL,
	[sChallengeList_4] [smallint] NOT NULL,
	[sChallengeList_5] [smallint] NOT NULL,
	[sChallengeList_6] [smallint] NOT NULL,
	[sChallengeList_7] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sChallengeList_7]  DEFAULT (0),
	[sChallengeList_8] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sChallengeList_8]  DEFAULT (0),
	[sChallengeList_9] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sChallengeList_9]  DEFAULT (0),
	[sChallengeList_10] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sChallengeList_10]  DEFAULT (0),
	[byWarRequestDay] [tinyint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byWarRequestDay]  DEFAULT (3),
	[byWarRequestTime] [tinyint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byWarRequestTime]  DEFAULT (9),
	[byWarRequestMinute] [tinyint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byWarRequestMinute]  DEFAULT (0),
	[byGuerrillaWarDay] [tinyint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byGuerrillaWarDay]  DEFAULT (1),
	[byGuerrillaWarTime] [tinyint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byGuerrillaWarTime]  DEFAULT (20),
	[byGuerrillaWarMinute] [tinyint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_byGuerrillaWarMinute]  DEFAULT (0),
	[strChallengeList] [char](50) NULL,
	[sMoradonTariff] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sMoradonTariff_1]  DEFAULT (0),
	[sDellosTariff] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sDellosTariff_1]  DEFAULT (0),
	[nDungeonCharge] [int] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_nDungeonCharge_2]  DEFAULT (0),
	[nMoradonTax] [int] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_nMoradonTax_1]  DEFAULT (0),
	[nDellosTax] [int] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_nDellosTax_2]  DEFAULT (0),
	[sRequestList_1] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_1_1]  DEFAULT (0),
	[sRequestList_2] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_2]  DEFAULT (0),
	[sRequestList_3] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_3]  DEFAULT (0),
	[sRequestList_4] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_4]  DEFAULT (0),
	[sRequestList_5] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_5]  DEFAULT (0),
	[sRequestList_6] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_6]  DEFAULT (0),
	[sRequestList_7] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_7]  DEFAULT (0),
	[sRequestList_8] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_8]  DEFAULT (0),
	[sRequestList_9] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_9]  DEFAULT (0),
	[sRequestList_10] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_SIEGE_WARFARE_sRequestList_10]  DEFAULT (0)
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
