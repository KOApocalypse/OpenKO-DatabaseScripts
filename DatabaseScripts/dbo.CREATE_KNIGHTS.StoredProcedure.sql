USE [KN_online]
GO
/****** Object:  StoredProcedure [dbo].[CREATE_KNIGHTS]    Script Date: 09/09/2016 04:14:56 ******/
DROP PROCEDURE [dbo].[CREATE_KNIGHTS]
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery1.sql|7|0|C:\Users\Leth\AppData\Local\Temp\~vs858F.sql
-- Batch submitted through debugger: SQLQuery4.sql|7|0|C:\Users\Leth\AppData\Local\Temp\~vs3286.sql

/****** Object:  Stored Procedure dbo.CREATE_KNIGHTS    Script Date: 6/6/2006 6:03:32 PM ******/

-- modify by sungyong 2002.09.27

CREATE PROCEDURE [dbo].[CREATE_KNIGHTS]
@nRet		smallint OUTPUT,
@index 		smallint,
@nation		tinyint,
@community	tinyint,
@strName 	char(21), 
@strChief	char(21)


AS

DECLARE @Row tinyint, @knightsindex smallint, @knightsname char(21)
	SET @Row = 0	SET @knightsindex = 0  SET @knightsname = ''

	SELECT @Row = COUNT(*) FROM KNIGHTS WHERE IDNum = @index or  IDName = @strName
	
	IF @Row > 0 or @index = 0
	BEGIN
		SET @nRet =  3
		RETURN
	END

	--SELECT @Row = COUNT(*) FROM KNIGHTS WHERE IDName = @strName
	
	--IF @Row > 0
--	BEGIN
	--	SET @nRet =  3
		--RETURN
--	END
	
BEGIN TRAN	

	INSERT INTO KNIGHTS ( IDNum, Nation, Flag, IDName, Chief  ) 
	VALUES	 (@index, @nation, @community, @strName, @strChief )

	INSERT INTO KNIGHTS_USER ( sIDNum, strUserID  ) 
	VALUES	 (@index,  @strChief )
	
	UPDATE USERDATA SET Knights = @index, Fame = 1 WHERE strUserId = @strChief
	
	IF @@ERROR <> 0
	BEGIN	 
		ROLLBACK TRAN 
		SET @nRet =  6
		RETURN
	END

--	UPDATE USERDATA SET Knights = @index, Fame = 1 WHERE strUserId = @strChief	-- 1 == Chief Authority
	
	IF @@ERROR <> 0
	BEGIN	 
		ROLLBACK TRAN 
		SET @nRet =  6
		RETURN
	END

COMMIT TRAN
SET @nRet =  0
GO
