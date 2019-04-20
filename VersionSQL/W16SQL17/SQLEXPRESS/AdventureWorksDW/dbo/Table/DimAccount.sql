/****** Object:  Table [dbo].[DimAccount]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[DimAccount](
	[AccountKey] [int] IDENTITY(1,1) NOT NULL,
	[ParentAccountKey] [int] NULL,
	[AccountCodeAlternateKey] [int] NULL,
	[ParentAccountCodeAlternateKey] [int] NULL,
	[AccountDescription] [nvarchar](50) NULL,
	[AccountType] [nvarchar](50) NULL,
	[Operator] [nvarchar](50) NULL,
	[CustomMembers] [nvarchar](300) NULL,
	[ValueType] [nvarchar](50) NULL,
	[CustomMemberOptions] [nvarchar](200) NULL,
 CONSTRAINT [PK_DimAccount] PRIMARY KEY CLUSTERED 
(
	[AccountKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[DimAccount]  WITH CHECK ADD  CONSTRAINT [FK_DimAccount_DimAccount] FOREIGN KEY([ParentAccountKey])
REFERENCES [dbo].[DimAccount] ([AccountKey])
ALTER TABLE [dbo].[DimAccount] CHECK CONSTRAINT [FK_DimAccount_DimAccount]
