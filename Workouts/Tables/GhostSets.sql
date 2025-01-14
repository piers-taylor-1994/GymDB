CREATE TABLE [Workouts].[GhostSets]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [RoutineId] UNIQUEIDENTIFIER NOT NULL, 
    [ExerciseId] UNIQUEIDENTIFIER NOT NULL,
    [Order] INT NULL

    CONSTRAINT [FK_GhostSetsRoutineId_ToGhostRoutine_Id] FOREIGN KEY ([RoutineId]) REFERENCES [Workouts].[GhostRoutine](Id),
    CONSTRAINT [FK_GhostSetsExerciseId_ToExercises_Id] FOREIGN KEY ([ExerciseId]) REFERENCES [Workouts].[Exercises](Id)
)
