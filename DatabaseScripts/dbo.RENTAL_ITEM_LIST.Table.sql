USE [KN_online]
GO
/****** Object:  Table [dbo].[RENTAL_ITEM_LIST]    Script Date: 09/09/2016 04:14:46 ******/
ALTER TABLE [dbo].[RENTAL_ITEM_LIST] DROP CONSTRAINT [DF_RENTAL_ITEM_LIST_sDurability]
GO
ALTER TABLE [dbo].[RENTAL_ITEM_LIST] DROP CONSTRAINT [DF_RENTAL_ITEM_LIST_byRegType]
GO
ALTER TABLE [dbo].[RENTAL_ITEM_LIST] DROP CONSTRAINT [DF_RENTAL_ITEM_LIST_timeRegister]
GO
DROP TABLE [dbo].[RENTAL_ITEM_LIST]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RENTAL_ITEM_LIST](
	[nRentalIndex] [int] NOT NULL,
	[nItemIndex] [int] NOT NULL,
	[sDurability] [smallint] NOT NULL CONSTRAINT [DF_RENTAL_ITEM_LIST_sDurability]  DEFAULT (0),
	[nSerialNumber] [bigint] NOT NULL,
	[byRegType] [tinyint] NOT NULL CONSTRAINT [DF_RENTAL_ITEM_LIST_byRegType]  DEFAULT (0),
	[byItemType] [tinyint] NOT NULL,
	[byClass] [tinyint] NOT NULL,
	[sRentalTime] [smallint] NOT NULL,
	[nRentalMoney] [int] NOT NULL,
	[strLenderCharID] [char](21) NOT NULL,
	[strLenderAcID] [char](21) NOT NULL,
	[strBorrowerCharID] [char](21) NULL,
	[strBorrowerAcID] [char](21) NULL,
	[timeLender] [smalldatetime] NULL,
	[timeRegister] [smalldatetime] NOT NULL CONSTRAINT [DF_RENTAL_ITEM_LIST_timeRegister]  DEFAULT (getdate())
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
