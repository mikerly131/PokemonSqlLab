-- Write a query that returns a bunch of stuff and sort it by an arbitrary decision
-- Pokemon Name, Trainer Name, Pokemon Current Level, Pokemon Primary Type, Pokemon Secondary Type
-- I believe this is working, just not sorted.
SELECT p.name, t.trainername, pt.pokelevel, tp.name, typ.name
FROM pokemons as p
JOIN pokemon_trainer as pt
ON p.id = pt.pokemon_id
JOIN trainers as t
ON pt.trainerID = t.trainerID
JOIN types as tp
ON p.primary_type = tp.id
LEFT JOIN types as typ
ON p.secondary_type = typ.id;

-- Need to sort by trainer with highest avg level of pokemon, and total power?