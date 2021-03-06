USE [KN_online]
GO
/****** Object:  Table [dbo].[USER_EDITOR]    Script Date: 09/09/2016 04:14:48 ******/
ALTER TABLE [dbo].[USER_EDITOR] DROP CONSTRAINT [DF_USER_EDITOR_EditorTime]
GO
DROP TABLE [dbo].[USER_EDITOR]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USER_EDITOR](
	[strCharID] [char](21) NOT NULL,
	[strAccountID] [char](21) NOT NULL,
	[strOpID] [char](21) NOT NULL,
	[strOpIP] [char](21) NOT NULL,
	[strOldUserValue] [char](600) NOT NULL,
	[strNewUserValue] [char](600) NOT NULL,
	[strOldUserSkill] [char](10) NOT NULL,
	[strNewUserSkill] [char](10) NOT NULL,
	[strOldUserItem] [char](400) NOT NULL,
	[strNewUserItem] [char](400) NOT NULL,
	[strOldWHValue] [char](100) NOT NULL,
	[strNewWHValue] [char](100) NOT NULL,
	[strOldWHItem] [char](1600) NOT NULL,
	[strNewWHItem] [char](1600) NOT NULL,
	[EditorTime] [smalldatetime] NOT NULL CONSTRAINT [DF_USER_EDITOR_EditorTime]  DEFAULT (getdate())
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
