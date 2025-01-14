﻿CREATE TABLE [Workouts].[GhostSetsArray]
(
	[Id] INT NOT NULL IDENTITY(0,1) PRIMARY KEY, 
	[SetId] UNIQUEIDENTIFIER NOT NULL,
	[Weight] INT NOT NULL,
	[Sets] INT NOT NULL,
	[Reps] INT NOT NULL,
	[Order] INT NOT NULL

	CONSTRAINT [FK_GhostSetsArraySetId_ToGhostSets_Id] FOREIGN KEY ([SetId]) REFERENCES [Workouts].[GhostSets](Id),
)
