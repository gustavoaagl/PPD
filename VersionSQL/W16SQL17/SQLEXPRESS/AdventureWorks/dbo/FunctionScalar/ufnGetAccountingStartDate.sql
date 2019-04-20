/****** Object:  Function [dbo].[ufnGetAccountingStartDate]    Committed by VersionSQL https://www.versionsql.com ******/


CREATE FUNCTION [dbo].[ufnGetAccountingStartDate]()
RETURNS [datetime] 
AS 
BEGIN
    RETURN CONVERT(datetime, '20030701', 112);
END;
