SELECT title, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

SELECT title FROM tracks
WHERE duration >= (3.5 * 60);

SELECT title FROM collections
WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM artists
WHERE name NOT LIKE '% %';

SELECT title FROM tracks
WHERE title LIKE '%мой%' OR title LIKE '%my%';