CREATE DATABASE wikidb;
CREATE USER 'wikifavelas'@'localhost' IDENTIFIED BY 'a!Cs4SHjvKh';
GRANT ALL PRIVILEGES ON wikidb.* TO 'wikifavelas'@'localhost' WITH GRANT OPTION;