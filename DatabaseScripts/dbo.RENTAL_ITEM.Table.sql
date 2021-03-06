USE [KN_online]
GO
/****** Object:  Table [dbo].[RENTAL_ITEM]    Script Date: 09/09/2016 04:14:46 ******/
ALTER TABLE [dbo].[RENTAL_ITEM] DROP CONSTRAINT [DF_RENTAL_ITEM_sDurability]
GO
ALTER TABLE [dbo].[RENTAL_ITEM] DROP CONSTRAINT [DF_RENTAL_ITEM_byRegType]
GO
ALTER TABLE [dbo].[RENTAL_ITEM] DROP CONSTRAINT [DF_RENTAL_ITEM_timeRegister]
GO
DROP TABLE [dbo].[RENTAL_ITEM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RENTAL_ITEM](
	[nRentalIndex] [int] IDENTITY(1,1) NOT NULL,
	[nItemIndex] [int] NOT NULL,
	[sDurability] [smallint] NOT NULL CONSTRAINT [DF_RENTAL_ITEM_sDurability]  DEFAULT (0),
	[nSerialNumber] [bigint] NOT NULL,
	[byRegType] [tinyint] NOT NULL CONSTRAINT [DF_RENTAL_ITEM_byRegType]  DEFAULT (0),
	[byItemType] [tinyint] NOT NULL,
	[byClass] [tinyint] NOT NULL,
	[sRentalTime] [smallint] NOT NULL,
	[nRentalMoney] [int] NOT NULL,
	[strLenderCharID] [char](21) NOT NULL,
	[strLenderAcID] [char](21) NOT NULL,
	[strBorrowerCharID] [char](21) NULL,
	[strBorrowerAcID] [char](21) NULL,
	[timeLender] [smalldatetime] NULL,
	[timeRegister] [smalldatetime] NOT NULL CONSTRAINT [DF_RENTAL_ITEM_timeRegister]  DEFAULT (getdate()),
 CONSTRAINT [PK_RENTAL_ITEM] PRIMARY KEY CLUSTERED 
(
	[nRentalIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
