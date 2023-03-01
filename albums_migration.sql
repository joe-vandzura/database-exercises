USE ymir_joe;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50),
                        name  VARCHAR(50) NOT NULL,
                        release_date YEAR,
                        sales FLOAT,
                        genre VARCHAR(15),
                        PRIMARY KEY (id)
);
DESCRIBE albums;
SHOW CREATE TABLE albums;