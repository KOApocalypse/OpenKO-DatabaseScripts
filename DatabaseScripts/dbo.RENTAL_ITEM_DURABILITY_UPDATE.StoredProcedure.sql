USE [KN_online]
GO
/****** Object:  StoredProcedure [dbo].[RENTAL_ITEM_DURABILITY_UPDATE]    Script Date: 09/09/2016 04:14:57 ******/
DROP PROCEDURE [dbo].[RENTAL_ITEM_DURABILITY_UPDATE]
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  Stored Procedure dbo.RENTAL_ITEM_DURABILITY_UPDATE    Script Date: 6/6/2006 6:03:34 PM ******/



-- 2004.04.22. sungyong
CREATE PROCEDURE [dbo].[RENTAL_ITEM_DURABILITY_UPDATE]
@nRentalIndex  int,
@nDurability   int

AS

DECLARE @Row tinyint
DECLARE @LendercharID char(21), @LenderAccountID char(21)

SET @Row = 0

SELECT @LendercharID = strLenderCharID, @LenderAccountID = strLenderAcID
FROM RENTAL_ITEM_LIST 
WHERE nRentalIndex = @nRentalIndex

-- 임대자정보에 내구력 업데이트
UPDATE USER_RENTAL_ITEM
SET sDurability = @nDurability
WHERE strAccountID = @LenderAccountID and nRentalIndex = @nRentalIndex
GO
