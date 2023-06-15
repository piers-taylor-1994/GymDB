CREATE TABLE [Workouts].[Exercises]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [MuscleGroupId] INT NOT NULL, 
    [Name] VARCHAR(MAX) NOT NULL, 
    [Description] VARCHAR(MAX) NOT NULL, 
    [PictureId] UNIQUEIDENTIFIER NULL,

    CONSTRAINT [FK_ExercisesMuscleGroupId_ToMuscleGroupsId] FOREIGN KEY ([MuscleGroupId]) REFERENCES [Workouts].[MuscleGroups]
)
