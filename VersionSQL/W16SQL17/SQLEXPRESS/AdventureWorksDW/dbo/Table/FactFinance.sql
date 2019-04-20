/****** Object:  Table [dbo].[FactFinance]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FactFinance](
	[FinanceKey] [int] IDENTITY(1,1) NOT NULL,
	[DateKey] [int] NOT NULL,
	[OrganizationKey] [int] NOT NULL,
	[DepartmentGroupKey] [int] NOT NULL,
	[ScenarioKey] [int] NOT NULL,
	[AccountKey] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]

ALTER TABLE [dbo].[FactFinance]  WITH CHECK ADD  CONSTRAINT [FK_FactFinance_DimAccount] FOREIGN KEY([AccountKey])
REFERENCES [dbo].[DimAccount] ([AccountKey])
ALTER TABLE [dbo].[FactFinance] CHECK CONSTRAINT [FK_FactFinance_DimAccount]
ALTER TABLE [dbo].[FactFinance]  WITH CHECK ADD  CONSTRAINT [FK_FactFinance_DimDate] FOREIGN KEY([DateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactFinance] CHECK CONSTRAINT [FK_FactFinance_DimDate]
ALTER TABLE [dbo].[FactFinance]  WITH CHECK ADD  CONSTRAINT [FK_FactFinance_DimDepartmentGroup] FOREIGN KEY([DepartmentGroupKey])
REFERENCES [dbo].[DimDepartmentGroup] ([DepartmentGroupKey])
ALTER TABLE [dbo].[FactFinance] CHECK CONSTRAINT [FK_FactFinance_DimDepartmentGroup]
ALTER TABLE [dbo].[FactFinance]  WITH CHECK ADD  CONSTRAINT [FK_FactFinance_DimOrganization] FOREIGN KEY([OrganizationKey])
REFERENCES [dbo].[DimOrganization] ([OrganizationKey])
ALTER TABLE [dbo].[FactFinance] CHECK CONSTRAINT [FK_FactFinance_DimOrganization]
ALTER TABLE [dbo].[FactFinance]  WITH CHECK ADD  CONSTRAINT [FK_FactFinance_DimScenario] FOREIGN KEY([ScenarioKey])
REFERENCES [dbo].[DimScenario] ([ScenarioKey])
ALTER TABLE [dbo].[FactFinance] CHECK CONSTRAINT [FK_FactFinance_DimScenario]
