MERGE [dbo].[Nutrient] AS [tgt]
    USING (
    VALUES('Fat',1)
         ,('Protein', 1)
         ,('Carbohydrate', 1)) AS [src] ([Name], [NutrientTypeId])
    ON ([tgt].[Name] = [src].[Name])
    AND ([tgt].[NutrientTypeId] = [src].[NutrientTypeId])
    WHEN MATCHED THEN
        UPDATE SET [Name] = [src].[Name],
                   [NutrientTypeId] = [src].[NutrientTypeId]
    WHEN NOT MATCHED THEN
        INSERT ([Name], [NutrientTypeId])
        VALUES ([Name], [NutrientTypeId]); 