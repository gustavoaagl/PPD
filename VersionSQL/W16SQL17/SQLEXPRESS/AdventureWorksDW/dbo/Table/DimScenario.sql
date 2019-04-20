/****** Object:  Table [dbo].[DimScenario]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[DimScenario](
	[ScenarioKey] [int] IDENTITY(1,1) NOT NULL,
	[ScenarioName] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimScenario] PRIMARY KEY CLUSTERED 
(
	[ScenarioKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

