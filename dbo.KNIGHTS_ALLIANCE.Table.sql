USE [KN_online]
GO
/****** Object:  Table [dbo].[KNIGHTS_ALLIANCE]    Script Date: 09/09/2016 04:14:41 ******/
DROP TABLE [dbo].[KNIGHTS_ALLIANCE]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KNIGHTS_ALLIANCE](
	[sMainAllianceKnights] [smallint] NOT NULL,
	[sSubAllianceKnights] [smallint] NOT NULL,
	[sMercenaryClan_1] [smallint] NOT NULL,
	[sMercenaryClan_2] [smallint] NOT NULL
) ON [PRIMARY]
GO
