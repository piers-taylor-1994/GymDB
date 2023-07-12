CREATE TABLE [Workouts].[RoutineTemplateSets]
(
	[Id] INT NOT NULL IDENTITY(0,1) PRIMARY KEY, 
    [RoutineTemplateId] UNIQUEIDENTIFIER NOT NULL, 
    [ExerciseId] UNIQUEIDENTIFIER NOT NULL

    CONSTRAINT [FK_RoutineTemplateSetsRoutineTemplateId_ToRoutineTemplate_Id] FOREIGN KEY ([RoutineTemplateId]) REFERENCES [Workouts].[RoutineTemplate](Id)
    CONSTRAINT [FK_RoutineTemplateSetsExerciseId_ToExercise_Id] FOREIGN KEY ([ExerciseId]) REFERENCES [Workouts].[Exercises](Id)
)
