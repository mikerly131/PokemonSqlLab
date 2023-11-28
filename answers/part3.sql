-- What is each pokemon's primary type?
SELECT p.name, t.name
FROM pokemons as p
LEFT JOIN types as t
ON p.primary_type = t.id;

-- What is Rufflet's secondary type?
SELECT p.name, p.secondary_type, t.name
FROM pokemons as p
JOIN types as t
ON p.secondary_type = t.id
WHERE p.name = 'Rufflet';

-- What are the names of the pokemon that belong to the trainer with trainerID 303?

-- How many pokemon have a secondary type Poison?
SELECT COUNT(*)
FROM pokemons as p
RIGHT JOIN types as t
ON p.secondary_type = t.id
WHERE t.name = 'Poison';

-- What are all the primary types and how many pokemon have that type?

-- How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer

-- How many pokemon only belong to one trainer and no other?