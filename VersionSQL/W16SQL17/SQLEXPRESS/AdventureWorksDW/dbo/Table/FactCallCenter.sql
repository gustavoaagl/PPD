/****** Object:  Table [dbo].[FactCallCenter]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FactCallCenter](
	[FactCallCenterID] [int] IDENTITY(1,1) NOT NULL,
	[DateKey] [int] NOT NULL,
	[WageType] [nvarchar](15) NOT NULL,
	[Shift] [nvarchar](20) NOT NULL,
	[LevelOneOperators] [smallint] NOT NULL,
	[LevelTwoOperators] [smallint] NOT NULL,
	[TotalOperators] [smallint] NOT NULL,
	[Calls] [int] NOT NULL,
	[AutomaticResponses] [int] NOT NULL,
	[Orders] [int] NOT NULL,
	[IssuesRaised] [smallint] NOT NULL,
	[AverageTimePerIssue] [smallint] NOT NULL,
	[ServiceGrade] [float] NOT NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_FactCallCenter_FactCallCenterID] PRIMARY KEY CLUSTERED 
(
	[FactCallCenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_FactCallCenter_DateKey_Shift] UNIQUE NONCLUSTERED 
(
	[DateKey] ASC,
	[Shift] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[FactCallCenter]  WITH CHECK ADD  CONSTRAINT [FK_FactCallCenter_DimDate] FOREIGN KEY([DateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactCallCenter] CHECK CONSTRAINT [FK_FactCallCenter_DimDate]
