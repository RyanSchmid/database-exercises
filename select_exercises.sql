USE codeup_test_db;


SELECT artist, album_name FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Selected' AS 'Pink Floyd albums';

SELECT artist, album_name, release_date FROM albums WHERE album_name = 'Sgt. Peppers Lonely Hearts Club';
SELECT 'Selected' AS 'Sgt. Peppers release date';

SELECT artist, album_name, genre FROM albums WHERE album_name = 'Nevermind';
SELECT 'Selected' AS 'Nevermind genre';

SELECT artist, album_name, release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT 'Selected' AS 'albums released in the 1990s';

SELECT artist, album_name, sales FROM albums WHERE sales < 20.0;
SELECT 'Selected' AS 'album sales under 20 million copies';

SELECT artist, album_name, genre FROM albums WHERE genre like '%rock%';
SELECT 'Selected' AS 'rock genre albums';
