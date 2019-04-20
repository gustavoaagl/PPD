/****** Object:  Table [dbo].[NewFactCurrencyRate]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[NewFactCurrencyRate](
	[AverageRate] [real] NULL,
	[CurrencyID] [nvarchar](3) NULL,
	[CurrencyDate] [date] NULL,
	[EndOfDayRate] [real] NULL,
	[CurrencyKey] [int] NULL,
	[DateKey] [int] NULL
) ON [PRIMARY]

