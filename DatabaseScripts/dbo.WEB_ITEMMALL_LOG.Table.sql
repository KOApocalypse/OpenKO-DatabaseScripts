USE [KN_online]
GO
/****** Object:  Table [dbo].[WEB_ITEMMALL_LOG]    Script Date: 09/09/2016 04:14:50 ******/
ALTER TABLE [dbo].[WEB_ITEMMALL_LOG] DROP CONSTRAINT [DF_WEB_ITEMMALL_LOG_BuyTime]
GO
DROP TABLE [dbo].[WEB_ITEMMALL_LOG]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEB_ITEMMALL_LOG](
	[strAccountID] [char](21) NOT NULL,
	[strCharID] [char](21) NOT NULL,
	[ServerNo] [smallint] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ItemCount] [smallint] NOT NULL,
	[BuyTime] [smalldatetime] NOT NULL CONSTRAINT [DF_WEB_ITEMMALL_LOG_BuyTime]  DEFAULT (getdate()),
	[img_file_name] [varchar](50) NULL,
	[strItemName] [varchar](100) NULL,
	[price] [int] NULL,
	[pay_type] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
