/****** Object:  Table [dbo].[FactCurrencyRate]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FactCurrencyRate](
	[CurrencyKey] [int] NOT NULL,
	[DateKey] [int] NOT NULL,
	[AverageRate] [float] NOT NULL,
	[EndOfDayRate] [float] NOT NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_FactCurrencyRate_CurrencyKey_DateKey] PRIMARY KEY CLUSTERED 
(
	[CurrencyKey] ASC,
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[FactCurrencyRate]  WITH CHECK ADD  CONSTRAINT [FK_FactCurrencyRate_DimCurrency] FOREIGN KEY([CurrencyKey])
REFERENCES [dbo].[DimCurrency] ([CurrencyKey])
ALTER TABLE [dbo].[FactCurrencyRate] CHECK CONSTRAINT [FK_FactCurrencyRate_DimCurrency]
ALTER TABLE [dbo].[FactCurrencyRate]  WITH CHECK ADD  CONSTRAINT [FK_FactCurrencyRate_DimDate] FOREIGN KEY([DateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactCurrencyRate] CHECK CONSTRAINT [FK_FactCurrencyRate_DimDate]
