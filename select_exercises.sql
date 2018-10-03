USE codeup_test_db;


SELECT artist, album_name FROM albums WHERE artist = 'Pink Floyd';
SELECT artist, album_name, release_date FROM albums WHERE album_name = 'Sgt. Peppers Lonely Hearts Club';
SELECT artist, genre, album_name FROM albums WHERE album_name = 'Nevermind';
SELECT artist, album_name, release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT artist, album_name, sales FROM albums WHERE sales < 20.0;
SELECT artist, album_name, genre FROM albums WHERE genre = '%rock%';




