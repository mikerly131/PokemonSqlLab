-- What are all the types of pokemon that a pokemon can have?
-- Do you want a list of them?  A count?
SELECT * FROM types;

-- What is the name of the pokemon with id 45?
SELECT name FROM pokemons WHERE id = 45;

-- How many pokemon are there?
SELECT COUNT(*) FROM pokemons;

-- How many types are there?
--    I think the real asnwer is something like...
SELECT COUNT(primary_type), t.name
FROM pokemons as p
JOIN types as t
ON p.primary_type = t.id
GROUP BY t.name;
-- But maybe you wanted it simpler like
SELECT COUNT(*) FROM types;

-- How many pokemon have a secondary type?
SELECT COUNT(*) FROM pokemons WHERE secondary_type IS NOT NULL;