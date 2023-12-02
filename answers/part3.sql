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
SELECT p.name as 'Pokemon - Trainer 303'
FROM pokemon_trainer as pt
LEFT JOIN pokemons as p
ON pt.pokemon_id = p.id
WHERE pt.trainerID = 303;

-- Works but has an extra unnecessary join
--SELECT p.name as 'Pokemon - Trainer 303'
--FROM trainers as t
--LEFT JOIN pokemon_trainer as pt
--ON t.trainerID = pt.trainerID
--LEFT JOIN pokemons as p
--ON pt.pokemon_id = p.id
--WHERE t.trainerID = 303;


-- How many pokemon have a secondary type Poison?
SELECT COUNT(*) as 'Pokemon with Secondary Type'
FROM pokemons as p
RIGHT JOIN types as t
ON p.secondary_type = t.id
WHERE t.name = 'Poison';

-- What are all the primary types and how many pokemon have that type?
SELECT t.name as 'Primary Type', COUNT(p.primary_type) as 'Pokemon Count'
FROM pokemons as p
LEFT JOIN types as t
ON p.primary_type = t.id
GROUP BY p.primary_type;

-- OR if you mean in the game how many pokemon exist for each type
SELECT t.name as 'Primary Type', COUNT(*) as 'Number Of Pokemon'
FROM pokemons as p
LEFT JOIN types as t
ON p.primary_type = t.id
LEFT JOIN pokemon_trainer as pt
ON p.id = pt.pokemon_id
GROUP BY t.name;


-- How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
-- The hint is throwing me off, I'm not sure what is being asked, maybe this..
SELECT p.name as 'Pokemon', COUNT(pt.trainerID) as 'Owned by Trainers'
FROM pokemons as p
JOIN pokemon_trainer as pt
ON p.id = pt.pokemon_id
WHERE pt.pokelevel = 100
GROUP BY pt.trainerID;

-- How many pokemon only belong to one trainer and no other?
SELECT p.name 'Pokemon', COUNT(pokemon_id) AS 'Trainers Owning Count'
FROM pokemon_trainer
JOIN pokemons as p
ON pokemon_trainer.pokemon_id = p.id
GROUP BY pokemon_trainer.pokemon_id
HAVING COUNT(pokemon_id) <2;