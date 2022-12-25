--Episode	
--Next Ready	
--Sky	/ On Demand	/ Prime	/ Netflix	/ Apple	 / Disney	 / Paramount	
--Carry On	
--Next Season


USE [randoSmallProjects]
GO

--DROP TABLE IF EXISTS [w2w].[Content]
--GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [w2w].[Content](
  [ContentID] INT IDENTITY(1,1) NOT NULL,
  [ContentName] VARCHAR(100) NOT NULL,
	[ContentAKA]  VARCHAR(100) NULL,
  [ContentType] VARCHAR(5) NOT NULL,
  [Seasons] INT NULL,
	[Genre] VARCHAR(100) NOT NULL,
	[Provider] VARCHAR(25) NOT NULL,
	[EOL] BIT NOT NULL,
	[Continue] BIT NOT NULL,
	[UptoSeason] INT NULL,
	[UptoEpisode] INT NULL,
	[Notes] VARCHAR(1000) NULL,
	[CurrentlyWatching] BIT NOT NULL,
	[WatchNext] BIT NOT NULL,
	[CreatedDateTime] DATETIME NOT NULL,
  [UpdatedDateTime] DATETIME NULL
) ON [PRIMARY]
GO

ALTER TABLE [w2w].[Content]
	ADD PRIMARY KEY(ContentID)
GO

ALTER TABLE [w2w].[Content]
  ADD CONSTRAINT [DF_w2wContent_CreatedDateTime_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [CreatedDateTime]
GO

ALTER TABLE [w2w].[Content]
  ADD CONSTRAINT [DF_w2wContent_EOL_SetTo0]  
  DEFAULT (0) FOR [EOL]
GO

ALTER TABLE [w2w].[Content]
  ADD CONSTRAINT [DF_w2wContent_CurrentlyWatching_SetTo0]  
  DEFAULT (0) FOR [CurrentlyWatching]
GO
ALTER TABLE [w2w].[Content]
  ADD CONSTRAINT [DF_w2wContent_WatchNext_SetTo0]  
  DEFAULT (0) FOR [WatchNext]
GO