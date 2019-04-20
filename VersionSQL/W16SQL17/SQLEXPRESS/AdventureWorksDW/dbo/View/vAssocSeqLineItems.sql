/****** Object:  View [dbo].[vAssocSeqLineItems]    Committed by VersionSQL https://www.versionsql.com ******/


CREATE VIEW [dbo].[vAssocSeqLineItems]
AS
SELECT     OrderNumber, LineNumber, Model
FROM         dbo.vDMPrep
WHERE     (FiscalYear = '2013')

