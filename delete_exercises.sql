USE codeup_test_db;

SELECT 'Selected' AS 'albums after 1991';
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'Selected' AS 'disco albums';
SELECT * FROM albums WHERE genre like '%disco%';

SELECT 'Selected' AS 'albums by the Beatles';
SELECT * FROM albums WHERE artist like '%Beatles%';


SELECT 'Selected' AS 'albums after 1991';
DELETE FROM albums WHERE id IN (6, 13, 14, 15, 19, 20, 21, 22, 27, 31);

SELECT 'Selected' AS 'disco albums';
DELETE FROM albums WHERE id IN (8, 22);

SELECT 'Selected' AS 'albums by the Beatles';
DELETE FROM albums WHERE id IN (16, 21, 24);







