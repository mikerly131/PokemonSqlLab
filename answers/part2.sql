-- What are all the types of pokemon that a pokemon can have?
SELECT COUNT(*) FROM types;

-- What is the name of the pokemon with id 45?
SELECT name FROM pokemons WHERE id = 45;

-- How many pokemon are there?
SELECT COUNT(*) FROM pokemons;

-- How many types are there?
--    I think the real asnwer is something like...
--   A pokemon can have a primary and a secondary type so
--   Pairs = n(n-1)/2 where n is Answer 1...or (18)(18-1)/2 = 153
--   So 153 types can be created considering primary and secondary.
SELECT COUNT(*) FROM types;

-- How many pokemon have a secondary type?
SELECT COUNT(*) FROM pokemons WHERE secondary_type IS NOT NULL;