CREATE TABLE [Workouts].[RoutineTemplateSets]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [RoutineTemplateId] UNIQUEIDENTIFIER NOT NULL, 
    [ExerciseId] UNIQUEIDENTIFIER NOT NULL

    CONSTRAINT [FK_RoutineTemplateSetsRoutineTemplateId_ToRoutineTemplate_Id] FOREIGN KEY ([RoutineTemplateId]) REFERENCES [Workouts].[RoutineTemplate](Id)
    CONSTRAINT [FK_RoutineTemplateSetsExerciseId_ToExercise_Id] FOREIGN KEY ([ExerciseId]) REFERENCES [Workouts].[Exercises](Id)
)
