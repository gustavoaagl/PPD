/****** Object:  Table [dbo].[FactResellerSales]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FactResellerSales](
	[ProductKey] [int] NOT NULL,
	[OrderDateKey] [int] NOT NULL,
	[DueDateKey] [int] NOT NULL,
	[ShipDateKey] [int] NOT NULL,
	[ResellerKey] [int] NOT NULL,
	[EmployeeKey] [int] NOT NULL,
	[PromotionKey] [int] NOT NULL,
	[CurrencyKey] [int] NOT NULL,
	[SalesTerritoryKey] [int] NOT NULL,
	[SalesOrderNumber] [nvarchar](20) NOT NULL,
	[SalesOrderLineNumber] [tinyint] NOT NULL,
	[RevisionNumber] [tinyint] NULL,
	[OrderQuantity] [smallint] NULL,
	[UnitPrice] [money] NULL,
	[ExtendedAmount] [money] NULL,
	[UnitPriceDiscountPct] [float] NULL,
	[DiscountAmount] [float] NULL,
	[ProductStandardCost] [money] NULL,
	[TotalProductCost] [money] NULL,
	[SalesAmount] [money] NULL,
	[TaxAmt] [money] NULL,
	[Freight] [money] NULL,
	[CarrierTrackingNumber] [nvarchar](25) NULL,
	[CustomerPONumber] [nvarchar](25) NULL,
	[OrderDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_FactResellerSales_SalesOrderNumber_SalesOrderLineNumber] PRIMARY KEY CLUSTERED 
(
	[SalesOrderNumber] ASC,
	[SalesOrderLineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimCurrency] FOREIGN KEY([CurrencyKey])
REFERENCES [dbo].[DimCurrency] ([CurrencyKey])
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimCurrency]
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimDate] FOREIGN KEY([OrderDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimDate]
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimDate1] FOREIGN KEY([DueDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimDate1]
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimDate2] FOREIGN KEY([ShipDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimDate2]
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimEmployee] FOREIGN KEY([EmployeeKey])
REFERENCES [dbo].[DimEmployee] ([EmployeeKey])
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimEmployee]
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimProduct] FOREIGN KEY([ProductKey])
REFERENCES [dbo].[DimProduct] ([ProductKey])
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimProduct]
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimPromotion] FOREIGN KEY([PromotionKey])
REFERENCES [dbo].[DimPromotion] ([PromotionKey])
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimPromotion]
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimReseller] FOREIGN KEY([ResellerKey])
REFERENCES [dbo].[DimReseller] ([ResellerKey])
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimReseller]
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimSalesTerritory] FOREIGN KEY([SalesTerritoryKey])
REFERENCES [dbo].[DimSalesTerritory] ([SalesTerritoryKey])
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimSalesTerritory]
