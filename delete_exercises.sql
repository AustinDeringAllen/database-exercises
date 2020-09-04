USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'RESULTS';
SELECT * FROM albums WHERE release_date > '1991';

SELECT 'Albums with the genre ''disco''' AS 'RESULTS';
SELECT * FROM albums WHERE genre = 'disco';

SELECT 'All albums from Whitney Houston' AS 'RESULTS';
SELECT * FROM albums WHERE artist = 'Whitney Houston';

# Delete

DELETE FROM albums WHERE release_date > '1991';
DELETE FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT 'Albums released after 1991' AS 'RESULTS';
SELECT * FROM albums WHERE release_date > '1991';

SELECT 'Albums with the genre ''disco''' AS 'RESULTS';
SELECT * FROM albums WHERE genre = 'disco';

SELECT 'All albums from Whitney Houston' AS 'RESULTS';
SELECT * FROM albums WHERE artist = 'Whitney Houston';