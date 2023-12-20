CREATE TABLE [Workouts].[ExerciseArray]
(
    [Id] INT NOT NULL PRIMARY KEY, 
    [ExerciseId] UNIQUEIDENTIFIER NOT NULL, 
    [Weight] FLOAT NULL, 
    [Sets] INT NULL, 
    [Reps] INT NULL,

    CONSTRAINT [FK_ExerciseArrayExerciseId_ToExercise_Id] FOREIGN KEY ([ExerciseId]) REFERENCES [Workouts].[Exercises](Id)
)
