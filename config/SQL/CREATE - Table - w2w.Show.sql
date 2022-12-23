--Episode	
--Next Ready	
--Sky	/ On Demand	/ Prime	/ Netflix	/ Apple	 / Disney	 / Paramount	
--Carry On	
--Next Season


USE [randoSmallProjects]
GO

--DROP TABLE IF EXISTS [w2w].[Show]
--GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [w2w].[Show](
  [ShowID] INT IDENTITY(1,1) NOT NULL,
  [ShowName] VARCHAR(100) NOT NULL,
	[ShowAKA]  VARCHAR(100) NULL,
  [ShowType] VARCHAR(5) NOT NULL,
  [Seasons] INT NULL,
	[Genre] VARCHAR(100) NOT NULL,
	[Provider] VARCHAR(25) NOT NULL,
	[EOL] BIT NOT NULL,
	[Continue] BIT NOT NULL,
	[UptoSeason] INT NULL,
	[UptoEpisode] INT NULL,
	[CreatedDateTime] DATETIME NOT NULL,
  [UpdatedDateTime] DATETIME NULL
) ON [PRIMARY]
GO

ALTER TABLE [w2w].[Show]
	ADD PRIMARY KEY(ShowID)
GO

ALTER TABLE [w2w].[Show]
  ADD CONSTRAINT [DF_w2wShow_CreatedDateTime_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [CreatedDateTime]
GO

ALTER TABLE [w2w].[Show]
  ADD CONSTRAINT [DF_w2wShow_EOL_SetTo0]  
  DEFAULT (0) FOR [EOL]
GO