USE [KN_online]
GO
/****** Object:  Table [dbo].[USERDATA]    Script Date: 09/09/2016 04:14:49 ******/
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Nation]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Race]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Class]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Gender]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Rank]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Title]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Level]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Exp]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Loyalty]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Religion]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_City]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Knights]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Fame]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Hp]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Mp]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Sp]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Str]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Sta]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Dex]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Intel]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Cha]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Authority]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Points]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Gold]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_Zone]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_PX]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_PZ]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_PY]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_dwTime]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_strSkill]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_sQuestCount_1]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_MannerPoint]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_LoyaltyMonthly]
GO
ALTER TABLE [dbo].[USERDATA] DROP CONSTRAINT [DF_USERDATA_CreateTime_1]
GO
DROP TABLE [dbo].[USERDATA]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USERDATA](
	[strUserId] [varchar](21) NOT NULL,
	[Nation] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Nation]  DEFAULT ((0)),
	[Race] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Race]  DEFAULT ((1)),
	[Class] [smallint] NOT NULL CONSTRAINT [DF_USERDATA_Class]  DEFAULT ((0)),
	[HairColor] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Gender]  DEFAULT ((0)),
	[Rank] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Rank]  DEFAULT ((0)),
	[Title] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Title]  DEFAULT ((0)),
	[Level] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Level]  DEFAULT ((1)),
	[Exp] [int] NOT NULL CONSTRAINT [DF_USERDATA_Exp]  DEFAULT ((5)),
	[Loyalty] [int] NOT NULL CONSTRAINT [DF_USERDATA_Loyalty]  DEFAULT ((500)),
	[Face] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Religion]  DEFAULT ((0)),
	[City] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_City]  DEFAULT ((0)),
	[Knights] [smallint] NOT NULL CONSTRAINT [DF_USERDATA_Knights]  DEFAULT ((0)),
	[Fame] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Fame]  DEFAULT ((0)),
	[Hp] [smallint] NOT NULL CONSTRAINT [DF_USERDATA_Hp]  DEFAULT ((100)),
	[Mp] [smallint] NOT NULL CONSTRAINT [DF_USERDATA_Mp]  DEFAULT ((100)),
	[Sp] [smallint] NOT NULL CONSTRAINT [DF_USERDATA_Sp]  DEFAULT ((100)),
	[Strong] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Str]  DEFAULT ((0)),
	[Sta] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Sta]  DEFAULT ((0)),
	[Dex] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Dex]  DEFAULT ((0)),
	[Intel] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Intel]  DEFAULT ((0)),
	[Cha] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Cha]  DEFAULT ((0)),
	[Authority] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Authority]  DEFAULT ((1)),
	[Points] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Points]  DEFAULT ((0)),
	[Gold] [int] NOT NULL CONSTRAINT [DF_USERDATA_Gold]  DEFAULT ((50000)),
	[Zone] [tinyint] NOT NULL CONSTRAINT [DF_USERDATA_Zone]  DEFAULT ((1)),
	[Bind] [smallint] NULL,
	[PX] [int] NOT NULL CONSTRAINT [DF_USERDATA_PX]  DEFAULT ((268100)),
	[PZ] [int] NOT NULL CONSTRAINT [DF_USERDATA_PZ]  DEFAULT ((131000)),
	[PY] [int] NOT NULL CONSTRAINT [DF_USERDATA_PY]  DEFAULT ((0)),
	[dwTime] [int] NOT NULL CONSTRAINT [DF_USERDATA_dwTime]  DEFAULT ((0)),
	[strSkill] [varchar](10) NULL CONSTRAINT [DF_USERDATA_strSkill]  DEFAULT (0x00),
	[strItem] [varchar](400) NULL,
	[strSerial] [varchar](400) NULL,
	[sQuestCount] [smallint] NOT NULL CONSTRAINT [DF_USERDATA_sQuestCount_1]  DEFAULT ((0)),
	[strQuest] [varchar](400) NULL,
	[MannerPoint] [int] NOT NULL CONSTRAINT [DF_USERDATA_MannerPoint]  DEFAULT ((0)),
	[LoyaltyMonthly] [int] NOT NULL CONSTRAINT [DF_USERDATA_LoyaltyMonthly]  DEFAULT ((0)),
	[CreateTime] [smalldatetime] NOT NULL CONSTRAINT [DF_USERDATA_CreateTime_1]  DEFAULT (getdate()),
	[UpdateTime] [smalldatetime] NULL,
 CONSTRAINT [PK_USERDATA] PRIMARY KEY CLUSTERED 
(
	[strUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'BitShift', 1, 2, 108, 2, 0, 0, 80, 484095066, 11881241, 0, 0, 1, 1, 5559, 8602, 100, 255, 255, 255, 255, 255, 0, 255, 1863670053, 21, -1, 33700, 38910, 1340, 0, N'    F <
 ', N'        ?·©I         ›  o¯©I         ö¸	 ÉªE  ö$
 `­  W³©I ³±­  ''»©I ¿©I hv—          î ˆ î   )¼¿ð
 )kš." )kš." )¼¿ð
 *¼¿Ø ÝB¼
(# µB¼
(#         ²B¼
p ±B¼
ˆ Ð.¹)  Ð.¹)  Ð.¹)  Ð.¹)                  èF	»2 Èf—  @S—  tš  ˆ5š                                                                                          ', N'        	 &         )  -        Ï
	 1Ï
	 -5 /  , +          & &#   !  & & &	 &         
  0 0 0 0                                                                                                                                          ', 6, N'    8 D                                                                                                                                                                                                                                                                                                                                                                                               ', 255, 1055662, CAST(0xA60F0524 AS SmallDateTime), CAST(0xA67B0245 AS SmallDateTime))
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'Leth', 1, 4, 111, 0, 0, 0, 80, 50, 50000, 0, 0, 0, 1, 1542, 2600, 100, 50, 70, 60, 70, 50, 1, 255, 2099485000, 21, -1, 27310, 26190, 750, 2, N'          ', N'                                                                        _­          _­                   ¸>6  (Û>6                                                                                                                                                          ˜B¯/  ˜B¯/                                                                                  ', N'                                                                                                                                                                                                                                                             4 4                                                                                ', 3, N'8 D ô                                                                                                                                                                                                                                                                                                                                                                                                       ', 255, 50000, CAST(0xA672002F AS SmallDateTime), CAST(0xA674015A AS SmallDateTime))
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'Lord_Ganon', 1, 3, 109, 2, 0, 0, 65, 32401338, 414, 0, 0, 0, 0, 1519, 2519, 100, 50, 90, 70, 80, 212, 1, 0, 8750, 21, -1, 27510, 25300, 780, 31, N'4      <  ', N'                                                ÊJ¤8                 _­          _­                  ]C¼
X ñO¿
ˆ                 _­                                                                                                                                                                                                                                  ', N'                                                v	                 4         4                                   4                                                                                                                                                                                                                                ', 0, N'                                                                                                                                                                                                                                                                                                                                                                                                                ', 0, 0, CAST(0xA61B0571 AS SmallDateTime), CAST(0xA6740166 AS SmallDateTime))
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'LordGanon', 1, 3, 103, 0, 0, 0, 4, 190, 500, 0, 0, 0, 0, 50, 122, 100, 50, 50, 70, 70, 60, 1, 9, 33068, 21, -1, 30740, 35170, 870, 0, N'          ', N'                                                                                                                @S—   Ô0                                                                                                                                                                                                                                                          ', N'                                                                                                                 - -                                                                                                                                                                                                                                                        ', 0, N'                                                                                                                                                                                                                                                                                                                                                                                                                ', 0, 0, CAST(0xA5D70377 AS SmallDateTime), CAST(0xA63801FF AS SmallDateTime))
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'PriestTest', 1, 4, 104, 0, 0, 0, 1, 5, 500, 3, 0, 0, 0, 100, 100, 100, 50, 70, 60, 70, 50, 1, 0, 50000, 21, NULL, 31200, 40200, 0, 0, N' ', NULL, NULL, 0, NULL, 0, 0, CAST(0xA675008B AS SmallDateTime), NULL)
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'test', 2, 13, 212, 0, 1, 0, 70, 6065844, 50008225, 0, 0, 0, 0, 747, 2175, 100, 60, 50, 70, 70, 50, 0, 0, 806176608, 21, -1, 30979, 34900, 870, 0, N'          ', N'                                                Ç¡>6> ´ªE  Ç¡>6> 4­                                  @S—  Èf— é8ýVPF 8r™   Ô0  9¬lh ÀûX (Û>6   ¸>6   À—  Ô2%
(#                                                                                                                                                                                 ', N'                                                 # " # !                                   7   "    / ! !                                                                                                                                                                                ', 7, N'     8 D                                                                                                                                                                                                                                                                                                                                                                                            ', 0, 7775, CAST(0xA10301A7 AS SmallDateTime), CAST(0xA678023D AS SmallDateTime))
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'test2', 1, 1, 101, 0, 0, 0, 18, 9028, 450, 0, 0, 0, 0, 198, 178, 100, 86, 60, 70, 70, 50, 1, 15, 1416, 21, -1, 31560, 34580, 870, 0, N'         ', N'                                
ûJ         µ»(="                                                 Áû @S—  @Ð—   Ô0  ÖØÂà. ¦îŠ	'' ïÅ¿À ÛB¼
X ßB¼
ø* Õô@  =˜                                                                                                                                                                                          ', N'                                          
                                                 / 1  0  ,                                                                                                                                                                                             ', 2, N' "                                                                                                                                                                                                                                                                                                                                                                                                           ', 0, 0, CAST(0xA10301E3 AS SmallDateTime), CAST(0xA60B0500 AS SmallDateTime))
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'test3', 2, 12, 209, 0, 0, 0, 29, 22204, 300, 0, 0, 0, 0, 366, 716, 100, 60, 60, 70, 66, 72, 1, 56, 48109767, 102, -1, 86400, 95700, 0, 0, N'        ', N'        ï˜Žš                 ‘Žš         ßB¼
›*                         •Ž@         ÙœŽj ¿ Žš Èf— X (©0  PÌ0  8Ð0  @S—  @Ð—  pE˜   Ô0  ï˜Ž  (,0  •Ž  ßB¼
ø*                                                                                                                                                                         ', N'                                   4                                         
  7  3 8  )                                                                                                                                                                        ', 0, N'                                                                                                                                                                                                                                                                                                                                                                                                                ', 0, 0, CAST(0xA10301E4 AS SmallDateTime), CAST(0xA6780213 AS SmallDateTime))
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'testHideSpell', 2, 12, 207, 2, 0, 0, 44, 648985, 6419850, 0, 0, 15002, 1, 1004, 579, 100, 60, 60, 80, 50, 50, 1, 129, 2023090000, 21, -1, 33540, 38880, 1340, 0, N'      (  ', N'        ïk]»                                                 èF	È2 _­          _­                  @8\D 68\D ,8\D "8\D 98DH .kš¶5 .kš¶5                                         .kš¶5 .kš¶5 Bkš¶5                         (W—          Ð.¹)  ¨•—  À‘—  Ø—  ð‰—  °j—         Ð.¹)                                          ', N'                                                         ¶	 4         ;                 (	 (	 (	 ,	
 ,	 6 7                                        
 7 7 7                                 
 6              7                                        ', 5, N' " 8 D ô                                                                                                                                                                                                                                                                                                                                                                                                 ', 0, 499850, CAST(0xA66102D8 AS SmallDateTime), CAST(0xA67B013A AS SmallDateTime))
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'Testing', 2, 11, 201, 0, 0, 0, 20, 25287, 564, 0, 0, 0, 1, 258, 238, 100, 75, 65, 60, 50, 50, 1, 57, 1536301, 21, -1, 36050, 42080, 1340, 77, N'         ', N'        ïûV                 
ûU         Ö»(‰.         Ö»(‰.         ûU                 Áû& ¹”X 4%X  Ô0  8Ð0  PÌ0  pE˜  @Ð—   Ð  >÷(# @S—  ]C¼
X (Û>6                                                                                                                  p0 
 €Æ—ø*                                         ', N'         ''                 
        
 3         4         1                   	 ''
  ) 	 '' * + - . ,                                                                                                                  
                                        ', 8, N'    ! 8 D ô                                                                                                                                                                                                                                                                                                                                                                                        ', 0, 0, CAST(0xA5C804BD AS SmallDateTime), CAST(0xA6770134 AS SmallDateTime))
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'Testing123', 2, 13, 205, 0, 0, 0, 44, 689942, 500, 0, 0, 15003, 1, 1101, 1081, 100, 159, 80, 70, 70, 50, 1, 0, 12513826, 21, -1, 36750, 41880, 1340, 0, N'     ,   ', N'        ïûp                 
ûp         µ»(ú"                         ûp         ×ûp Áû@ Ð²˜ $ éU¼ˆ ø30  é‚íX Þ/  éU¼ˆ 8Ô0 ‰8‹X Ñ†íX 0,—  ðá/  )Åü." î   00  ‰’íX         @S—  ÑY¼ˆ  ¸>6                  (Û>6                                                                                          ', N'                                                                    	   	              !         # $  -                 &                                                                                        ', 9, N'     ! " 8 D ô                                                                                                                                                                                                                                                                                                                                                                                     ', 0, 0, CAST(0xA5F502CB AS SmallDateTime), CAST(0xA67C00AE AS SmallDateTime))
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'TestRogue', 1, 2, 102, 0, 0, 0, 1, 5, 500, 0, 0, 0, 0, 100, 100, 100, 60, 60, 80, 50, 50, 1, 0, 50000, 21, NULL, 31200, 40200, 0, 0, N' ', NULL, NULL, 0, NULL, 0, 0, CAST(0xA6760240 AS SmallDateTime), NULL)
INSERT [dbo].[USERDATA] ([strUserId], [Nation], [Race], [Class], [HairColor], [Rank], [Title], [Level], [Exp], [Loyalty], [Face], [City], [Knights], [Fame], [Hp], [Mp], [Sp], [Strong], [Sta], [Dex], [Intel], [Cha], [Authority], [Points], [Gold], [Zone], [Bind], [PX], [PZ], [PY], [dwTime], [strSkill], [strItem], [strSerial], [sQuestCount], [strQuest], [MannerPoint], [LoyaltyMonthly], [CreateTime], [UpdateTime]) VALUES (N'WarriorTest', 1, 1, 101, 0, 0, 0, 1, 5, 500, 0, 0, 0, 0, 39, 19, 100, 75, 65, 60, 50, 50, 1, 0, 50000, 21, -1, 35650, 42370, 1340, 0, N'          ', N'                                                                                                                                                                                                                                                                                                                                                                                        ', N'                                                                                                                                                                                                                                                                                                                                                                                        ', 1, N'2                                                                                                                                                                                                                                                                                                                                                                                                              ', 0, 0, CAST(0xA676024F AS SmallDateTime), CAST(0xA6760254 AS SmallDateTime))
