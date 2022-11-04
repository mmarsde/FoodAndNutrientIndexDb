CREATE TABLE [dbo].[FoodGroup]
(
    [FoodGroupId] INT IDENTITY(1, 1) NOT NULL, 
    [Description] VARCHAR(100) NULL, 
    [Code] CHAR(10) NOT NULL, 
    [FoodGroupTypeId] INT NOT NULL,
    CONSTRAINT [PK_FoodGroup_FoodGroupId] PRIMARY KEY CLUSTERED([FoodGroupId]),
    CONSTRAINT [FK_FoodGroup_FoodGroupTypeId_FoodGroupType_FoodGroupTypeId] FOREIGN KEY([FoodGroupTypeId]) REFERENCES [FoodGroupType](FoodGroupTypeId) 
);
