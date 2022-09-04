MERGE [dbo].[NutrientType] AS [tgt]  
    USING (
    VALUES('Macro')
         ,('Micro'))  as [src] ([Description])  
    ON ([tgt].[Description] = [src].[Description])  
    WHEN MATCHED THEN
        UPDATE SET [Description] = [src].[Description]  
    WHEN NOT MATCHED THEN  
        INSERT ([Description])  
        VALUES ([src].[Description]);