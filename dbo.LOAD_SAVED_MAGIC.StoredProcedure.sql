USE [KN_online]
GO
/****** Object:  StoredProcedure [dbo].[LOAD_SAVED_MAGIC]    Script Date: 09/09/2016 04:14:57 ******/
DROP PROCEDURE [dbo].[LOAD_SAVED_MAGIC]
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  Stored Procedure dbo.LOAD_SAVED_MAGIC    Script Date: 6/6/2006 6:03:33 PM ******/


CREATE PROCEDURE [dbo].[LOAD_SAVED_MAGIC]
@CharId	char(21),
@nRet		smallint OUTPUT
AS

SELECT @nRet = COUNT(strCharId) FROM USER_SAVED_MAGIC WHERE strCharId = @CharId
IF @nRet = 0
	RETURN

SELECT nSkill1, nDuring1, nSkill2, nDuring2,nSkill3, nDuring3,nSkill4, nDuring4,nSkill5, nDuring5,nSkill6, nDuring6,nSkill7, nDuring7,nSkill8, nDuring8,nSkill9, nDuring9,nSkill10, nDuring10 FROM USER_SAVED_MAGIC WHERE strCharID = @CharId

SET @nRet = 1
RETURN
GO
