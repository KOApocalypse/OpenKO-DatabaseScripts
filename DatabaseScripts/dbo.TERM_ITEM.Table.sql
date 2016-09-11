USE [KN_online]
GO
/****** Object:  Table [dbo].[TERM_ITEM]    Script Date: 09/09/2016 04:14:47 ******/
DROP TABLE [dbo].[TERM_ITEM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TERM_ITEM](
	[strUserId] [char](21) NULL,
	[byType] [tinyint] NULL,
	[nPos] [smallint] NULL,
	[ItemNum] [binary](4) NULL,
	[ItemSerial] [binary](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
