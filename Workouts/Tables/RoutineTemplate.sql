CREATE TABLE [Workouts].[RoutineTemplate]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [UserId] UNIQUEIDENTIFIER NOT NULL, 
    [Name] VARCHAR(50) NOT NULL

    CONSTRAINT [FK_RoutineTemplateUserId_ToUser_Id] FOREIGN KEY ([UserId]) REFERENCES [Users].[Users](Id)
)
