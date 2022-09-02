CREATE TABLE [dbo].[FoodGroupType]
(
	[FoodGroupTypeId] INT IDENTITY(1, 1) NOT NULL, 
    [Description] VARCHAR(50) NULL,
	CONSTRAINT [PK_FoodGroupType_FoodGroupTypeId] PRIMARY KEY CLUSTERED([FoodGroupTypeId])
);
