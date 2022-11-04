CREATE TABLE [dbo].[NutrientType]
(
    [NutrientTypeId] INT IDENTITY(1,1) NOT NULL, 
    [Description] VARCHAR(50) NULL,
    CONSTRAINT [PK_NutrientType_NutrientTypeId] PRIMARY KEY CLUSTERED([NutrientTypeId])
);
