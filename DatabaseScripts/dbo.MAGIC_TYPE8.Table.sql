USE [KN_online]
GO
/****** Object:  Table [dbo].[MAGIC_TYPE8]    Script Date: 09/09/2016 04:14:44 ******/
DROP TABLE [dbo].[MAGIC_TYPE8]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAGIC_TYPE8](
	[iNum] [int] NOT NULL,
	[Name] [char](30) NOT NULL,
	[Description] [char](100) NULL,
	[Target] [tinyint] NOT NULL,
	[Radius] [smallint] NOT NULL,
	[WarpType] [tinyint] NOT NULL,
	[ExpRecover] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (105650, N'descent                       ', N'??? ???? ??? ?? ?????.                                                                              ', 1, 30, 25, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (106650, N'descent                       ', N'??? ???? ??? ?? ?????.                                                                              ', 1, 30, 25, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (108770, N'??? ????                      ', N'?? ??? ??? ?? ?????. .                                                                              ', 1, 40, 25, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (109004, N'summon friend                 ', N'???? ????? ?? ?????. .                                                                              ', 1, 10000, 12, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (109015, N'Gate                          ', N'??? ?? ?? ??? ?? ?????                                                                              ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (109035, N'Escape                        ', N'?? ??? ??? ?? ??? ??????                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (110004, N'summon friend                 ', N'???? ????? ?? ??? ??????                                                                            ', 1, 10000, 12, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (110015, N'Gate                          ', N'??? ?? ?? ??? ?? ????? ?                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (110035, N'Escape                        ', N'?? ??? ??? ?? ??? ??????                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (111700, N'Gate                          ', N'??? ?? ?? ??? ?? ????? ?                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (112700, N'Gate                          ', N'??? ?? ?? ??? ?? ????? ?                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (205650, N'descent                       ', N'??? ???? ??? ?? ?????. ?                                                                            ', 1, 30, 25, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (206650, N'descent                       ', N'??? ???? ??? ?? ?????. ?                                                                            ', 1, 30, 25, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (208770, N'??? ???? iend                 ', N'?? ??? ??? ?? ?????. . ?                                                                            ', 1, 40, 25, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (209004, N'summon friend                 ', N'???? ????? ?? ?????. . ?                                                                            ', 1, 10000, 12, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (209015, N'Gate                          ', N'??? ?? ?? ??? ?? ????? ?                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (209035, N'Escape                        ', N'?? ??? ??? ?? ??? ??????                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (210004, N'summon friend                 ', N'???? ????? ?? ??? ??????                                                                            ', 1, 10000, 12, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (210015, N'Gate                          ', N'??? ?? ?? ??? ?? ????? ?                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (210035, N'Escape                        ', N'?? ??? ??? ?? ??? ??????                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (211700, N'Gate                          ', N'??? ?? ?? ??? ?? ????? ?                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (212700, N'Gate                          ', N'??? ?? ?? ??? ?? ????? ?                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (490042, N'Call clan members             ', N'?? ?? ?? ???? ????? ?? ?                                                                            ', 1, 10000, 12, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (490050, N'Call party                    ', N'?? ?? ?? ????? ????? ? ?                                                                            ', 1, 10000, 12, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (490088, N'Monster Summons Staff         ', N'??? ???? ?????. ???? ? ?                                                                            ', 1, 10000, 21, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (490093, N'Monster Summons Staff         ', N'??? ???? ?????. ???? ? ?                                                                            ', 1, 10000, 21, 2)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (490096, N'Monster Summons Staff         ', N'??? ???? ?????. ???? ? ?                                                                            ', 1, 10000, 21, 1)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (490097, N'Monster Summons Staff         ', N'??? ???? ?????. ???? ? ?                                                                            ', 1, 10000, 21, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (500022, N'???? ???? ??? s Staff         ', N'???? ??? ?? ??. ???? ? ?                                                                            ', 1, 10000, 1, 0)
INSERT [dbo].[MAGIC_TYPE8] ([iNum], [Name], [Description], [Target], [Radius], [WarpType], [ExpRecover]) VALUES (500038, N'???? ??? ???  s Staff         ', N'??? ???? ?? ??. ???? ? ?                                                                            ', 1, 10000, 25, 0)
