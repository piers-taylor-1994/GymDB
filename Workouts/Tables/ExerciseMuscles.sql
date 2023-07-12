CREATE TABLE [Workouts].[ExerciseMuscles]
(
	[Id] INT NOT NULL IDENTITY(0,1) PRIMARY KEY, 
    [ExerciseId] UNIQUEIDENTIFIER NOT NULL, 
    [MuscleId] INT NOT NULL

    CONSTRAINT [FK_ExerciseMusclesExerciseId_ToExercise_Id] FOREIGN KEY ([ExerciseId]) REFERENCES [Workouts].[Exercises](Id),
    CONSTRAINT [FK_ExerciseMuscleMuscleGroupId_ToMuscleGroup_Id] FOREIGN KEY ([MuscleId]) REFERENCES [Workouts].[MuscleGroups](Id)
)