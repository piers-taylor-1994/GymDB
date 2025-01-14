CREATE TABLE [Workouts].[Swimming]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [UserId] UNIQUEIDENTIFIER NOT NULL, 
    [Date] DATETIME2 NOT NULL,
    [Lengths] INT NOT NULL,
    [TimeSwimming] INT NOT NULL,
    [Review] BIT NOT NULL,
    [Explanation] VARCHAR(MAX),

    CONSTRAINT [FK_UserId_ToUser_Id] FOREIGN KEY ([UserId]) REFERENCES [Users].[Users](Id)
)
