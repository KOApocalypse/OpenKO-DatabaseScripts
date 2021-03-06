USE [KN_online]
GO
/****** Object:  Table [dbo].[FRIEND_LIST]    Script Date: 09/09/2016 04:14:36 ******/
DROP TABLE [dbo].[FRIEND_LIST]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRIEND_LIST](
	[strUserID] [char](21) NOT NULL,
	[strFriend1] [char](21) NULL,
	[strFriend2] [char](21) NULL,
	[strFriend3] [char](21) NULL,
	[strFriend4] [char](21) NULL,
	[strFriend5] [char](21) NULL,
	[strFriend6] [char](21) NULL,
	[strFriend7] [char](21) NULL,
	[strFriend8] [char](21) NULL,
	[strFriend9] [char](21) NULL,
	[strFriend10] [char](21) NULL,
	[strFriend11] [char](21) NULL,
	[strFriend12] [char](21) NULL,
	[strFriend13] [char](21) NULL,
	[strFriend14] [char](21) NULL,
	[strFriend15] [char](21) NULL,
	[strFriend16] [char](21) NULL,
	[strFriend17] [char](21) NULL,
	[strFriend18] [char](21) NULL,
	[strFriend19] [char](21) NULL,
	[strFriend20] [char](21) NULL,
	[strFriend21] [char](21) NULL,
	[strFriend22] [char](21) NULL,
	[strFriend23] [char](21) NULL,
	[strFriend24] [char](21) NULL,
 CONSTRAINT [PK_FRIEND_LIST] PRIMARY KEY CLUSTERED 
(
	[strUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[FRIEND_LIST] ([strUserID], [strFriend1], [strFriend2], [strFriend3], [strFriend4], [strFriend5], [strFriend6], [strFriend7], [strFriend8], [strFriend9], [strFriend10], [strFriend11], [strFriend12], [strFriend13], [strFriend14], [strFriend15], [strFriend16], [strFriend17], [strFriend18], [strFriend19], [strFriend20], [strFriend21], [strFriend22], [strFriend23], [strFriend24]) VALUES (N'BitShift             ', N'testHideSpell        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FRIEND_LIST] ([strUserID], [strFriend1], [strFriend2], [strFriend3], [strFriend4], [strFriend5], [strFriend6], [strFriend7], [strFriend8], [strFriend9], [strFriend10], [strFriend11], [strFriend12], [strFriend13], [strFriend14], [strFriend15], [strFriend16], [strFriend17], [strFriend18], [strFriend19], [strFriend20], [strFriend21], [strFriend22], [strFriend23], [strFriend24]) VALUES (N'testHideSpell        ', N'test3                ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
