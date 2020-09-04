USE codeup_test_db;
INSERT INTO albums (artist, album_name, release_date, sales, genre) VALUES
    ('Michael Jackson','Thriller','1982','47.3','pop, post-disco, funk, rock'),
    ('AC/DC','Back in Black','1980','29.4','hard rock'),
    ('Meat Loaf','Bat Out of Hell','1977','21.7','hard rock, glam rock, progressive rock'),
    ('Pink Floyd','The Dark Side of the Moon','1973','24.4','progressive rock'),
    ('Whitney Houston / Various artists','The Bodyguard','1992','28.4','R&B, soul, pop, soundtrack'),
    ('Eagles','Their Greatest Hits (1971-1975)','1976','41.2','country rock, soft rock, folk rock'),
    ('Bee Gees / Various artists','Saturday Night Fever','1977','21.6','disco'),
    ('Fleetwood Mac','Rumours','1977','27.9','soft rock'),
    ('Shania Twain','Come On Over','1997','29.6','country, pop');

-- Create a new file named albums_seeder.sql.
--
-- At the top of albums_seeder.sql be sure to USE the codeup_test_db database.
--
-- Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales (the first two tables). For sales data, use the 'sales certification' column of the tables, not 'claimed sales'. For artists listed with 'Various Artists', just use the primary artist's name.
--
-- First write your queries as separate INSERT statements for each record and test. You should see no output.
-- Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.
-- Note that running the albums_seeder.sql multiple times will generate duplicate data, don't worry about that for now (we'll fix it by the end of the exercise).
-- mysql -u USERNAME -p -t < filename.sql