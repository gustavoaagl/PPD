/****** Object:  Table [dbo].[DimProductSubcategory]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[DimProductSubcategory](
	[ProductSubcategoryKey] [int] IDENTITY(1,1) NOT NULL,
	[ProductSubcategoryAlternateKey] [int] NULL,
	[EnglishProductSubcategoryName] [nvarchar](50) NOT NULL,
	[SpanishProductSubcategoryName] [nvarchar](50) NOT NULL,
	[FrenchProductSubcategoryName] [nvarchar](50) NOT NULL,
	[ProductCategoryKey] [int] NULL,
 CONSTRAINT [PK_DimProductSubcategory_ProductSubcategoryKey] PRIMARY KEY CLUSTERED 
(
	[ProductSubcategoryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_DimProductSubcategory_ProductSubcategoryAlternateKey] UNIQUE NONCLUSTERED 
(
	[ProductSubcategoryAlternateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[DimProductSubcategory]  WITH CHECK ADD  CONSTRAINT [FK_DimProductSubcategory_DimProductCategory] FOREIGN KEY([ProductCategoryKey])
REFERENCES [dbo].[DimProductCategory] ([ProductCategoryKey])
ALTER TABLE [dbo].[DimProductSubcategory] CHECK CONSTRAINT [FK_DimProductSubcategory_DimProductCategory]
