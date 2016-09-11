USE [KN_online]
GO
/****** Object:  Table [dbo].[MONSTER_ITEM_TEST]    Script Date: 09/09/2016 04:14:45 ******/
DROP TABLE [dbo].[MONSTER_ITEM_TEST]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONSTER_ITEM_TEST](
	[sIndex] [smallint] NOT NULL,
	[iItem01] [int] NULL,
	[sPersent01] [smallint] NULL,
	[iItem02] [int] NULL,
	[sPersent02] [smallint] NULL,
	[iItem03] [int] NULL,
	[sPersent03] [smallint] NULL,
	[iItem04] [int] NULL,
	[sPersent04] [smallint] NULL,
	[iItem05] [int] NULL,
	[sPersent05] [smallint] NULL
) ON [PRIMARY]
GO
