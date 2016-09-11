USE [KN_online]
GO
/****** Object:  StoredProcedure [dbo].[ACCOUNT_LOGOUT]    Script Date: 09/09/2016 04:14:56 ******/
DROP PROCEDURE [dbo].[ACCOUNT_LOGOUT]
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[ACCOUNT_LOGOUT]
@AccountID	varchar(21),
@LogoutCode int,
@nRet		smallint	OUTPUT
AS
DELETE FROM CURRENTUSER WHERE strAccountID = @AccountID
SET @nRet = 1
RETURN @nRet
GO
