USE [KN_online]
GO
/****** Object:  StoredProcedure [dbo].[KING_CHANGE_TAX]    Script Date: 09/09/2016 04:14:57 ******/
DROP PROCEDURE [dbo].[KING_CHANGE_TAX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.KING_CHANGE_TAX    Script Date: 6/6/2006 6:03:33 PM ******/

-- created by sungyong 2004.07.09

CREATE PROC [dbo].[KING_CHANGE_TAX]
@byType tinyint,
@byNation tinyint,
@nKarusTax1	int, 
@nKarusTax2	int,
@nKarusTax3	int,
@nElmoTax1	int,
@nElmoTax2     int,
@nElmoTax3     int

AS

IF @byType = 4	-- 세율변경
	BEGIN
		UPDATE KING_SYSTEM
		SET byTerritoryTariff = @nKarusTax1
		WHERE byNation = @byNation
	END
ELSE IF @byType = 2	-- 세금징수
	BEGIN
		UPDATE KING_SYSTEM
		SET nTerritoryTax = @nKarusTax1
		WHERE byNation = @byNation
	END
ELSE IF @byType = 5	-- 조공징수
	BEGIN
		UPDATE KING_SYSTEM
		SET nTribute = @nKarusTax1
		WHERE byNation = @byNation
	END
ELSE IF @byType = 6	-- 
	BEGIN
		-- 카루스 세금 걷어들이기
		UPDATE KING_SYSTEM
		SET nTerritoryTax = @nKarusTax1, nTribute = @nKarusTax2, nNationalTreasury = @nKarusTax3
		WHERE byNation = 1

		-- 엘모 세금 걷어들이기
		UPDATE KING_SYSTEM
		SET nTerritoryTax = @nElmoTax1, nTribute = @nElmoTax2, nNationalTreasury = @nElmoTax3
		WHERE byNation = 2
	END
GO
