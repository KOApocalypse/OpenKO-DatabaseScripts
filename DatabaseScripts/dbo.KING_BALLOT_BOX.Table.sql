USE [KN_online]
GO
/****** Object:  Table [dbo].[KING_BALLOT_BOX]    Script Date: 09/09/2016 04:14:40 ******/
DROP TABLE [dbo].[KING_BALLOT_BOX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KING_BALLOT_BOX](
	[strAccountID] [varchar](21) NOT NULL,
	[strCharID] [varchar](21) NOT NULL,
	[byNation] [tinyint] NOT NULL,
	[strCandidacyID] [varchar](21) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KING_BALLOT_BOX] ([strAccountID], [strCharID], [byNation], [strCandidacyID]) VALUES (N'twostars', N'test', 2, N'test')
