-- Write a query that returns a bunch of stuff and sort it by an arbitrary decision
-- Stuff: Pokemon Name, Trainer Name, Pokemon Current Level, Pokemon Primary Type, Pokemon Secondary Type
-- Explain Sort:  Strongest trainer is one with highest avg level and hit points for pokemon, with most pokemon

SELECT p.name as 'Pokemon Name' , t.trainername as 'Trainer Name', pt.pokelevel as 'Level', tp.name as 'Primary Type',
typ.name as 'Secondary Type', s1.avg_power as 'Average Power', s3.avg_hp as 'Average HP', s2.poke_count as 'Total Pokemon'
FROM pokemons as p
JOIN pokemon_trainer as pt
ON p.id = pt.pokemon_id
JOIN trainers as t
ON pt.trainerID = t.trainerID
JOIN types as tp
ON p.primary_type = tp.id
LEFT JOIN types as typ
ON p.secondary_type = typ.id
INNER JOIN (SELECT AVG(pokelevel) as avg_power, trainerID FROM pokemon_trainer GROUP BY trainerID) as s1
ON pt.trainerID = s1.trainerID
INNER JOIN (SELECT AVG(hp) as avg_hp, trainerID FROM pokemon_trainer GROUP BY trainerID) as s3
ON pt.trainerID = s3.trainerID
INNER JOIN (SELECT COUNT(*) as poke_count, trainerID FROM pokemon_trainer GROUP BY trainerID) as s2
ON pt.trainerID = s2.trainerID
ORDER BY avg_power DESC, poke_count DESC, avg_hp DESC;

-- Left overs from trying out a bunch of query structures

-- ORDER BY total_level;

-- UNION
-- SELECT trainerID, SUM(pokelevel) / COUNT(pokelevel) as team_level, SUM(hp) / COUNT(hp) as team_life, SUM(attack) / COUNT(attack) as team_force
-- FROM pokemon_trainer
-- GROUP BY trainerID
-- ORDER BY team_force DESC;

-- SELECT avg(pt.pokelevel), t.trainername
-- FROM pokemone_trainer

-- GROUP BY pt.trainerID, pt.pokelevel
-- ORDER BY pt.pokelevel;

-- Need to sort by trainer with highest avg level of pokemon, and total power?
--SELECT p.name as 'Pokemon Name' , t.trainername as 'Trainer Name', pt.pokelevel as 'Level', tp.name as 'Primary Type',
--typ.name as 'Secondary Type', AVG(pt.pokelevel) as 'Total Power'
--FROM pokemons as p
--LEFT JOIN pokemon_trainer as pt
--ON p.id = pt.pokemon_id
--LEFT JOIN trainers as t
--ON pt.trainerID = t.trainerID
--JOIN types as tp
--ON p.primary_type = tp.id
--LEFT JOIN types as typ
--ON p.secondary_type = typ.id
--GROUP BY t.trainername
--ORDER BY AVG(pt.pokelevel) DESC;