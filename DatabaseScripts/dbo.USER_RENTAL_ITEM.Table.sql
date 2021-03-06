USE [KN_online]
GO
/****** Object:  Table [dbo].[USER_RENTAL_ITEM]    Script Date: 09/09/2016 04:14:49 ******/
ALTER TABLE [dbo].[USER_RENTAL_ITEM] DROP CONSTRAINT [DF_USER_RENTAL_ITEM_byRegType]
GO
ALTER TABLE [dbo].[USER_RENTAL_ITEM] DROP CONSTRAINT [DF_USER_RENTAL_ITEM_sDuration]
GO
ALTER TABLE [dbo].[USER_RENTAL_ITEM] DROP CONSTRAINT [DF_USER_RENTAL_ITEM_timeRegister]
GO
DROP TABLE [dbo].[USER_RENTAL_ITEM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USER_RENTAL_ITEM](
	[strUserID] [char](21) NOT NULL,
	[strAccountID] [char](21) NOT NULL,
	[byRentalType] [tinyint] NOT NULL,
	[byRegType] [tinyint] NOT NULL CONSTRAINT [DF_USER_RENTAL_ITEM_byRegType]  DEFAULT (0),
	[nRentalIndex] [int] NOT NULL,
	[nItemIndex] [int] NOT NULL,
	[sDurability] [smallint] NOT NULL CONSTRAINT [DF_USER_RENTAL_ITEM_sDuration]  DEFAULT (0),
	[nSerialNumber] [bigint] NOT NULL,
	[nRentalMoney] [int] NOT NULL,
	[sRentalTime] [smallint] NOT NULL,
	[sDuringTime] [smallint] NOT NULL,
	[timeRental] [smalldatetime] NULL,
	[timeRegister] [smalldatetime] NULL CONSTRAINT [DF_USER_RENTAL_ITEM_timeRegister]  DEFAULT (getdate())
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
