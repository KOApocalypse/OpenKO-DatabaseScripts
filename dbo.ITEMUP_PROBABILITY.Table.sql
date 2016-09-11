USE [KN_online]
GO
/****** Object:  Table [dbo].[ITEMUP_PROBABILITY]    Script Date: 09/09/2016 04:14:38 ******/
ALTER TABLE [dbo].[ITEMUP_PROBABILITY] DROP CONSTRAINT [DF_ITEMUP_PROBABILITY_nProbability]
GO
ALTER TABLE [dbo].[ITEMUP_PROBABILITY] DROP CONSTRAINT [DF_ITEMUP_PROBABILITY_nMaxFail]
GO
ALTER TABLE [dbo].[ITEMUP_PROBABILITY] DROP CONSTRAINT [DF_ITEMUP_PROBABILITY_nCurSuccess]
GO
ALTER TABLE [dbo].[ITEMUP_PROBABILITY] DROP CONSTRAINT [DF_ITEMUP_PROBABILITY_nCurFail]
GO
DROP TABLE [dbo].[ITEMUP_PROBABILITY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITEMUP_PROBABILITY](
	[bType] [tinyint] NOT NULL,
	[nMaxSuccess] [smallint] NOT NULL CONSTRAINT [DF_ITEMUP_PROBABILITY_nProbability]  DEFAULT (0),
	[nMaxFail] [smallint] NOT NULL CONSTRAINT [DF_ITEMUP_PROBABILITY_nMaxFail]  DEFAULT (0),
	[nCurSuccess] [smallint] NOT NULL CONSTRAINT [DF_ITEMUP_PROBABILITY_nCurSuccess]  DEFAULT (0),
	[nCurFail] [smallint] NOT NULL CONSTRAINT [DF_ITEMUP_PROBABILITY_nCurFail]  DEFAULT (0),
 CONSTRAINT [PK_ITEMUP_PROBABILITY] PRIMARY KEY CLUSTERED 
(
	[bType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ITEMUP_PROBABILITY] ([bType], [nMaxSuccess], [nMaxFail], [nCurSuccess], [nCurFail]) VALUES (1, 1, 1, 1, 1)
