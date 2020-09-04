USE codeup_test_db;
# SELECT * FROM codeup_test_db AS 'All albums by Pink Floyd' WHERE artist = 'Pink Floyd';
SELECT 'All Pink Floyd albums:' AS 'Results';
SELECT album_name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely hearts Club Band was released:' AS 'Results';
SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely hearts Club Band';

SELECT 'The genre for the album ''Nevermind'':' AS 'Results';
SELECT genre FROM albums WHERE album_name = 'Nevermind';

SELECT 'Albums released in the 90s:' AS 'Results';
SELECT album_name, release_date FROM albums WHERE release_date > '1989' AND release_date < '2000';

SELECT 'Albums which had less than 20 million certified sales' AS 'Results';
SELECT album_name FROM albums WHERE sales < '20.0';

SELECT 'Albums with a genre of rock' AS 'Results';
SELECT album_name FROM albums WHERE genre = 'rock';
