USE [KN_online]
GO
/****** Object:  StoredProcedure [dbo].[KING_UPDATE_NOAH_OR_EXP_EVENT]    Script Date: 09/09/2016 04:14:57 ******/
DROP PROCEDURE [dbo].[KING_UPDATE_NOAH_OR_EXP_EVENT]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.KING_UPDATE_NOAH_OR_EXP_EVENT    Script Date: 6/6/2006 6:03:33 PM ******/

-- created by sungyong 2004.07.09

CREATE PROC [dbo].[KING_UPDATE_NOAH_OR_EXP_EVENT]
@byType tinyint,
@byNation tinyint,
@byAmount tinyint,
@byDay tinyint,
@byHout tinyint,
@byMinute tinyint,
@sDurationTime	smallint

AS

IF @byType = 1			-- 노아보상이벤트
	BEGIN
		UPDATE KING_SYSTEM
		SET byNoahEvent = @byAmount, byNoahEvent_Day = @byDay, byNoahEvent_Hour = @byHout, 
			byNoahEvent_Minute = @byMinute, sNoahEvent_Duration = @sDurationTime
		WHERE byNation = @byNation
	END
ELSE IF @byType = 2		-- 경험치 보상 이벤트
	BEGIN
		UPDATE KING_SYSTEM
		SET byExpEvent = @byAmount, byExpEvent_Day = @byDay, byExpEvent_Hour = @byHout, 
			byExpEvent_Minute = @byMinute, sExpEvent_Duration = @sDurationTime
		WHERE byNation = @byNation
	END
GO
