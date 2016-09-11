USE [KN_online]
GO
/****** Object:  StoredProcedure [dbo].[KING_UPDATE_ELECTION_SCHDULE]    Script Date: 09/09/2016 04:14:57 ******/
DROP PROCEDURE [dbo].[KING_UPDATE_ELECTION_SCHDULE]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.KING_UPDATE_ELECTION_SCHDULE    Script Date: 6/6/2006 6:03:33 PM ******/

-- 2004.07.07. sungyong

CREATE PROCEDURE [dbo].[KING_UPDATE_ELECTION_SCHDULE]
@byType	tinyint,
@byNation	tinyint,
@sYear		smallint,
@byMonth	tinyint,
@byDay	tinyint,
@byHour	tinyint,
@byMinute	tinyint

AS

IF @byType = 0
	begin
		UPDATE KING_SYSTEM SET byType=@byType, sYear=@sYear, byMonth=@byMonth, byDay=@byDay, byHour=@byHour, byMinute=@byMinute,
					 byImType = 0, sImYear=0, byImMonth=0, byImDay=0, byImHour=0, byImMinute=0, strKingName=null
		WHERE byNation = @byNation
	end
else
	begin
		UPDATE KING_SYSTEM SET byType=@byType, sYear=@sYear, byMonth=@byMonth, byDay=@byDay, byHour=@byHour, byMinute=@byMinute
		WHERE byNation = @byNation
	end
GO
