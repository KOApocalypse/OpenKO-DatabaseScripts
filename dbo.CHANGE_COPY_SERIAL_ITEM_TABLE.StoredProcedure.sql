USE [KN_online]
GO
/****** Object:  StoredProcedure [dbo].[CHANGE_COPY_SERIAL_ITEM_TABLE]    Script Date: 09/09/2016 04:14:56 ******/
DROP PROCEDURE [dbo].[CHANGE_COPY_SERIAL_ITEM_TABLE]
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.CHANGE_COPY_SERIAL_ITEM_TABLE    Script Date: 6/6/2006 6:03:32 PM ******/
CREATE PROCEDURE 
[dbo].[CHANGE_COPY_SERIAL_ITEM_TABLE]
AS

ALTER TABLE COPY_SERIAL_ITEM 
ADD nItemSerial BIGINT

ALTER TABLE COPY_SERIAL_ITEM 
ADD nItemNum INT

ALTER TABLE COPY_SERIAL_ITEM 
ADD strItemName CHAR(50)

ALTER TABLE COPY_SERIAL_ITEM 
ADD sIndex INT IDENTITY
GO
