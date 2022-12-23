--Episode	
--Next Ready	
--Sky	/ On Demand	/ Prime	/ Netflix	/ Apple	 / Disney	 / Paramount	
--Carry On	
--Next Season


USE [randoSmallProjects]
GO

--DROP TABLE IF EXISTS [w2w].[Lookup]
--GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [w2w].[Lookup](
  [LookupID] INT IDENTITY(1,1) NOT NULL,
  [TableName] VARCHAR(100) NOT NULL,
  [FieldName] VARCHAR(100) NOT NULL,
  [LookupEntry] VARCHAR(100) NOT NULL,
  [LookupValue] VARCHAR(100) NOT NULL,
  [LookupOrder] INT NOT NULL,
	[CreatedDateTime] DATETIME NOT NULL,
  [UpdatedDateTime] DATETIME NULL
) ON [PRIMARY]
GO

ALTER TABLE [w2w].[Lookup]
	ADD PRIMARY KEY([LookupID])
GO

ALTER TABLE [w2w].[Lookup]
  ADD CONSTRAINT [DF_w2wLookup_CreatedDateTime_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [CreatedDateTime]
GO