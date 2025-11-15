INSERT INTO Recipes(
    Name,
    Description
    ) VALUES
    (
        'Kanelbullar',
        'En svensk klassiker med kanel och socker'
    ),
    (
        'Sockerkaka',
        'En enkel och saftig sockerkaka'
    ),
    (
        'Chokladmuffins',
        'Muffins fyllda med rik chokladsmak'
    );


INSERT INTO RecipesIngredients(
    RecipeId,
    IngredientId,
    Quantity,
    UnitId
    ) VALUES
    (
        1,
        1,
        '23',
        1
    ),
    (
        1,
        2,
        '10',
        1
    ),
    (
        1,
        3,
        '15',
        1
    ),
    (
        2,
        4,
        '150',
        1
    ),
    (
        2,
        5,
        '20',
        1
    ),
    (
        2,
        6,
        '40',
        7
    ),
    (
        3,
        7,
        '25',
        1
    ),
    (
        3,
        8,
        '12',
        1
    ),
    (
        3,
        9,
        '20',
        7
    );

UPDATE RecipesIngredients SET IngredientId = 16 
WHERE RecipeId = 3 AND IngredientId = 7;

UPDATE RecipesIngredients SET Quantity = 25
WHERE  RecipeId = 3 AND IngredientId = 7;