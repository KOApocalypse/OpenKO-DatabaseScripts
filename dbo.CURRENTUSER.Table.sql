USE [KN_online]
GO
/****** Object:  Table [dbo].[CURRENTUSER]    Script Date: 09/09/2016 04:14:36 ******/
DROP TABLE [dbo].[CURRENTUSER]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CURRENTUSER](
	[nServerNo] [int] NOT NULL,
	[strServerIP] [varchar](50) NOT NULL,
	[strAccountID] [varchar](50) NOT NULL,
	[strCharID] [varchar](50) NOT NULL,
	[strClientIP] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
