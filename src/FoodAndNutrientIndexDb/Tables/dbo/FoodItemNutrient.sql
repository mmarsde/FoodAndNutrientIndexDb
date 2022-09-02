CREATE TABLE [dbo].[FoodItemNutrient]
(
	[FoodItemNutrientId] INT IDENTITY(1, 1) NOT NULL, 
    [FoodItemId] INT NOT NULL, 
    [NutrientId] INT NOT NULL, 
    [Value] FLOAT NULL,
    CONSTRAINT [PK_FoodItemNutrient_FoodItemNutrientId] PRIMARY KEY CLUSTERED([FoodItemNutrientId]),
    CONSTRAINT [FK_FoodItemNutrient_FoodItemId_FoodItem_FoodItemId] FOREIGN KEY([FoodItemId]) REFERENCES [FoodItem]([FoodItemId]),
    CONSTRAINT [FK_FoodItemNutrient_NutrientId_Nutrient_NutrientId] FOREIGN KEY([NutrientId]) REFERENCES [Nutrient]([NutrientId])
);
