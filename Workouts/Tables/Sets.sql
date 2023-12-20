CREATE TABLE [Workouts].[Sets]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [RoutineId] UNIQUEIDENTIFIER NOT NULL, 
    [ExerciseId] UNIQUEIDENTIFIER NOT NULL,
    [Order] INT NULL

    CONSTRAINT [FK_SetsRoutineId_ToRoutine_Id] FOREIGN KEY ([RoutineId]) REFERENCES [Workouts].[Routine](Id),
    CONSTRAINT [FK_SetsExerciseId_ToExercises_Id] FOREIGN KEY ([ExerciseId]) REFERENCES [Workouts].[Exercises](Id)
)
