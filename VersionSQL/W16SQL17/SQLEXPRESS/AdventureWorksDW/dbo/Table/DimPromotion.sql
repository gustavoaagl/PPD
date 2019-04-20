/****** Object:  Table [dbo].[DimPromotion]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[DimPromotion](
	[PromotionKey] [int] IDENTITY(1,1) NOT NULL,
	[PromotionAlternateKey] [int] NULL,
	[EnglishPromotionName] [nvarchar](255) NULL,
	[SpanishPromotionName] [nvarchar](255) NULL,
	[FrenchPromotionName] [nvarchar](255) NULL,
	[DiscountPct] [float] NULL,
	[EnglishPromotionType] [nvarchar](50) NULL,
	[SpanishPromotionType] [nvarchar](50) NULL,
	[FrenchPromotionType] [nvarchar](50) NULL,
	[EnglishPromotionCategory] [nvarchar](50) NULL,
	[SpanishPromotionCategory] [nvarchar](50) NULL,
	[FrenchPromotionCategory] [nvarchar](50) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[MinQty] [int] NULL,
	[MaxQty] [int] NULL,
 CONSTRAINT [PK_DimPromotion_PromotionKey] PRIMARY KEY CLUSTERED 
(
	[PromotionKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_DimPromotion_PromotionAlternateKey] UNIQUE NONCLUSTERED 
(
	[PromotionAlternateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

