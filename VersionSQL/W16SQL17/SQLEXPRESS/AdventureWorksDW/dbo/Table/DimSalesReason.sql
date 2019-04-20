/****** Object:  Table [dbo].[DimSalesReason]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[DimSalesReason](
	[SalesReasonKey] [int] IDENTITY(1,1) NOT NULL,
	[SalesReasonAlternateKey] [int] NOT NULL,
	[SalesReasonName] [nvarchar](50) NOT NULL,
	[SalesReasonReasonType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DimSalesReason_SalesReasonKey] PRIMARY KEY CLUSTERED 
(
	[SalesReasonKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

