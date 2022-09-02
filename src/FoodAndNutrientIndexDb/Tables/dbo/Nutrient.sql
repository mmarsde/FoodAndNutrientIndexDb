CREATE TABLE [dbo].[Nutrient]
(
	[NutrientId] INT IDENTITY(1, 1) NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    [NutrientTypeId] INT NOT NULL,
    CONSTRAINT [PK_Nutrient_NutrientId] PRIMARY KEY CLUSTERED([NutrientId]),
    CONSTRAINT [FK_Nutrient_NutrientTypeId_NutrientType_NutrientTypeId] FOREIGN KEY([NutrientTypeId]) REFERENCES [NutrientType]([NutrientTypeId])
);
