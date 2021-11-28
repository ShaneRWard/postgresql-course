SELECT CAST('{"NAME": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) @> CAST('{"NAME": "Bob"}' AS JSONB);

SELECT CAST('{"NAME": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) @> CAST('{"favoriteFoods": ["Banana"]}' AS JSONB);