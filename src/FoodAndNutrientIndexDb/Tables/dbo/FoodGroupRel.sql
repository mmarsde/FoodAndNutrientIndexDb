CREATE TABLE [dbo].[FoodGroupRel]
(
    [FoodGroupRelId] INT IDENTITY(1, 1) NOT NULL, 
    [ParentFoodGroupId] INT NOT NULL, 
    [FoodGroupId] INT NOT NULL,
    CONSTRAINT [PK_FoodGroupRel_FoodGroupRelId] PRIMARY KEY CLUSTERED([FoodGroupRelId]),
    CONSTRAINT [FK_FoodGroupRel_ParentFoodGroupId_FoodGroup_FoodGroupId] FOREIGN KEY([ParentFoodGroupId]) REFERENCES [FoodGroup]([FoodGroupId]),
    CONSTRAINT [FK_FoodGroupRel_FoodGroupId_FoodGroup_FoodGroupId] FOREIGN KEY([FoodGroupId]) REFERENCES [FoodGroup]([FoodGroupId])
);
