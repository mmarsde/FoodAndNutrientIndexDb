MERGE [dbo].[FoodGroupType] AS [tgt]  
    USING (
    VALUES('Top Level Food Group')
          ,('Food Group')
          ,('Sub Food Group'))  as [src] ([Description])  
    ON ([tgt].[Description] = [src].[Description])  
    WHEN MATCHED THEN
        UPDATE SET [Description] = [src].[Description]  
    WHEN NOT MATCHED THEN  
        INSERT ([Description])  
        VALUES ([src].[Description]);