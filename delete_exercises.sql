SELECT * FROM albums;
DELETE FROM albums WHERE release_date > 1980;
DELETE FROM albums WHERE genre = 'Rock';
DELETE FROM albums WHERE album_name = 'Thriller2';
SELECT * FROM albums;