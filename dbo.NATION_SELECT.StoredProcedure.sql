USE [KN_online]
GO
/****** Object:  StoredProcedure [dbo].[NATION_SELECT]    Script Date: 09/09/2016 04:14:57 ******/
DROP PROCEDURE [dbo].[NATION_SELECT]
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.NATION_SELECT    Script Date: 6/6/2006 6:03:33 PM ******/



-- Created by Samma
-- 2002.01.18

CREATE PROCEDURE [dbo].[NATION_SELECT]
@nRet		smallint	OUTPUT,
@AccountID 	char(21),
@Nation	tinyint
AS

DECLARE @Row tinyint
	SET @Row = 0

--	SELECT @Row = COUNT(*) FROM  ACCOUNT_CHAR  WHERE strAccountID = @AccountID
--	IF @Row > 0	
--	BEGIN
--		SET @nRet = -1
--		RETURN
--	END

BEGIN TRAN	

	SELECT @Row = COUNT(*) FROM  ACCOUNT_CHAR  WHERE strAccountID = @AccountID
	IF @Row > 0
		UPDATE ACCOUNT_CHAR SET bNation = @Nation WHERE strAccountID = @AccountID
	ELSE
		INSERT INTO ACCOUNT_CHAR (strAccountID, bNation ) VALUES (@AccountID, @Nation)

	SELECT @Row = COUNT(*) FROM  WAREHOUSE  WHERE strAccountID = @AccountID
	IF @Row = 0	
		INSERT INTO WAREHOUSE ( strAccountID ) VALUES (@AccountID)

	IF @@ERROR <> 0
	BEGIN	 
		ROLLBACK TRAN 
		SET @nRet =  -2	
		RETURN
	END
	
COMMIT TRAN
SET @nRet =  1
GO
