USE [KN_online]
GO
/****** Object:  Table [dbo].[BATTLE]    Script Date: 09/09/2016 04:14:35 ******/
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byElmoArea_1]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byKarusArea_1]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byElmoAdvantage_1]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byKarusAdvantage_1]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_1_1]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_2]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_3]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_4]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_5]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_6]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_7]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_8]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_9]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_10]
GO
ALTER TABLE [dbo].[BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_11]
GO
DROP TABLE [dbo].[BATTLE]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BATTLE](
	[sIndex] [smallint] NOT NULL,
	[byNation] [tinyint] NOT NULL,
	[strUserName] [char](21) NULL,
	[byElmoArea] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byElmoArea_1]  DEFAULT (0),
	[byKarusArea] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byKarusArea_1]  DEFAULT (0),
	[byElmoAdvantage] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byElmoAdvantage_1]  DEFAULT (0),
	[byKarusAdvantage] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byKarusAdvantage_1]  DEFAULT (0),
	[byArea_1] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_1_1]  DEFAULT (0),
	[byArea_2] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_2]  DEFAULT (0),
	[byArea_3] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_3]  DEFAULT (0),
	[byArea_4] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_4]  DEFAULT (0),
	[byArea_5] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_5]  DEFAULT (0),
	[byArea_6] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_6]  DEFAULT (0),
	[byArea_7] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_7]  DEFAULT (0),
	[byArea_8] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_8]  DEFAULT (0),
	[byArea_9] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_9]  DEFAULT (0),
	[byArea_10] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_10]  DEFAULT (0),
	[byArea_11] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_11]  DEFAULT (0)
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BATTLE] ([sIndex], [byNation], [strUserName], [byElmoArea], [byKarusArea], [byElmoAdvantage], [byKarusAdvantage], [byArea_1], [byArea_2], [byArea_3], [byArea_4], [byArea_5], [byArea_6], [byArea_7], [byArea_8], [byArea_9], [byArea_10], [byArea_11]) VALUES (1, 1, N'GMMumma              ', 4, 5, 0, 6, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1)
