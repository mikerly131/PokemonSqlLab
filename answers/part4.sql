-- Write a query that returns a bunch of stuff and sort it by an arbitrary decision
-- Pokemon Name, Trainer Name, Pokemon Current Level, Pokemon Primary Type, Pokemon Secondary Type
SELECT p.name, t.trainername, pt.pokelevel, p.primary_type, p.secondary_type
FROM pokemons as p
JOIN pokemon_trainer as pt
ON p.id = pt.pokemon_id
JOIN trainers as t
ON pt.trainerID = t.trainerID;

-- Need to figure out how to JOIN types as tp
-- Need to sort by trainer with highest avg level of pokemon, and total power?