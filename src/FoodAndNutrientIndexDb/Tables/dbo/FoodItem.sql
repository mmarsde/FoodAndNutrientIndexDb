CREATE TABLE [dbo].[FoodItem]
(
	[FoodItemId] INT IDENTITY(1, 1) NOT NULL, 
    [FoodGroupId] INT NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_FoodItem_FoodItemId] PRIMARY KEY CLUSTERED([FoodItemId]), 
    CONSTRAINT [FK_FoodItem_FoodItemGroupId_FoodItemGroup_FoodItemGroupId] FOREIGN KEY([FoodGroupId]) REFERENCES [FoodGroup](FoodGroupId)
);