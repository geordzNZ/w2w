USE [randoSmallProjects]
GO
SET IDENTITY_INSERT [w2w].[Lookup] ON 

INSERT [w2w].[Lookup] 
([LookupID], [TableName], [FieldName], [LookupEntry], [LookupValue], [LookupOrder], [CreatedDateTime], [UpdatedDateTime]) 

VALUES 
	(1, N'tblTest', N'Name', N'StartConn', N'Hi from w2w DB', 1, GETDATE(), NULL),
	(2, N'Show', N'Provider', N'Sky', N'Sky', 1, GETDATE(), NULL),
	(3, N'Show', N'Provider', N'Apple +', N'Apple', 2, GETDATE(), NULL),
	(4, N'Show', N'Provider', N'Amazon Prime', N'Prime', 3, GETDATE(), NULL),
	(5, N'Show', N'Provider', N'On Demand', N'On Demand', 4, GETDATE(), NULL),
	(6, N'Show', N'Provider', N'Netflix', N'Netflix', 5, GETDATE(), NULL),
	(7, N'Show', N'Provider', N'Disney', N'Disney', 6, GETDATE(), NULL),
	(8, N'Show', N'Provider', N'Paramount +', N'Paramount', 7, GETDATE(), NULL),
	(9, N'Show', N'Type', N'TV Show', N'TV', 1, GETDATE(), NULL),
	(10, N'Show', N'Type', N'Movie', N'Movie', 2, GETDATE(), NULL)

SET IDENTITY_INSERT [w2w].[Lookup] OFF
GO
