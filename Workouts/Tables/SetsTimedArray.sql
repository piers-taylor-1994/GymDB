CREATE TABLE [dbo].[SetsTimedArray]
(
	[Id] INT NOT NULL IDENTITY(0,1) PRIMARY KEY, 
	[SetId] UNIQUEIDENTIFIER NOT NULL,
	[Weight] INT NOT NULL,
	[Sets] INT NOT NULL,
	[Seconds] INT NOT NULL,
	[Order] INT NOT NULL

	CONSTRAINT [FK_SetsTimedArraySetId_ToSets_Id] FOREIGN KEY ([SetId]) REFERENCES [Workouts].[Sets](Id),
)
