USE [KN_online]
GO
/****** Object:  Table [dbo].[WEBPAGE_ADDRESS]    Script Date: 09/09/2016 04:14:50 ******/
DROP TABLE [dbo].[WEBPAGE_ADDRESS]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEBPAGE_ADDRESS](
	[nIndex] [char](10) NULL,
	[strWebPageAddress] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WEBPAGE_ADDRESS] ([nIndex], [strWebPageAddress]) VALUES (N'1         ', N'sohu.com  ')
