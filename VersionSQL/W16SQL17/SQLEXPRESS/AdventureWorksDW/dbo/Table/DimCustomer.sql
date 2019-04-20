/****** Object:  Table [dbo].[DimCustomer]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[DimCustomer](
	[CustomerKey] [int] IDENTITY(1,1) NOT NULL,
	[GeographyKey] [int] NULL,
	[CustomerAlternateKey] [nvarchar](15) NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[NameStyle] [bit] NULL,
	[BirthDate] [date] NULL,
	[MaritalStatus] [nchar](1) NULL,
	[Suffix] [nvarchar](10) NULL,
	[Gender] [nvarchar](1) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[YearlyIncome] [money] NULL,
	[TotalChildren] [tinyint] NULL,
	[NumberChildrenAtHome] [tinyint] NULL,
	[EnglishEducation] [nvarchar](40) NULL,
	[SpanishEducation] [nvarchar](40) NULL,
	[FrenchEducation] [nvarchar](40) NULL,
	[EnglishOccupation] [nvarchar](100) NULL,
	[SpanishOccupation] [nvarchar](100) NULL,
	[FrenchOccupation] [nvarchar](100) NULL,
	[HouseOwnerFlag] [nchar](1) NULL,
	[NumberCarsOwned] [tinyint] NULL,
	[AddressLine1] [nvarchar](120) NULL,
	[AddressLine2] [nvarchar](120) NULL,
	[Phone] [nvarchar](20) NULL,
	[DateFirstPurchase] [date] NULL,
	[CommuteDistance] [nvarchar](15) NULL,
 CONSTRAINT [PK_DimCustomer_CustomerKey] PRIMARY KEY CLUSTERED 
(
	[CustomerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [IX_DimCustomer_CustomerAlternateKey] ON [dbo].[DimCustomer]
(
	[CustomerAlternateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[DimCustomer]  WITH CHECK ADD  CONSTRAINT [FK_DimCustomer_DimGeography] FOREIGN KEY([GeographyKey])
REFERENCES [dbo].[DimGeography] ([GeographyKey])
ALTER TABLE [dbo].[DimCustomer] CHECK CONSTRAINT [FK_DimCustomer_DimGeography]
