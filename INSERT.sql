INSERT INTO artists (name) VALUES
('Nirvana'),
('Linkin Park'),
('Баста'),
('Martin Garrix');

INSERT INTO genres (title) VALUES
('EDM'),
('Rap'),
('Rock');

INSERT INTO albums (title, year) VALUES
('Nevermind', 1991),
('Bleach', 1989),
('Living Things', 2012),
('Meteora', 2003),
('Баста 3', 2010),
('БАСТА 1', 2006),
('Gold Skies', 2014),
('Seven', 2016);

INSERT INTO tracks (title, duration, album_id) VALUES
('Smells Like Teen Spirit', 301, 1),
('Come As You Are', 219, 1),
('About a Girl', 168, 2),
('School', 162, 2),
('In My Remains', 200, 3),
('Lost in the Echo', 205, 3),
('Faint', 162, 4),
('Numb', 186, 4),
('Моя Игра', 204, 5),
('Гудок', 198, 5),
('Это всё', 245, 6),
('Жара', 206, 6),
('Proxy', 271, 7),
('Tremor', 194, 7),
('Sun Is Never Going Down', 205, 8),
('Dreamer', 195, 8);

INSERT INTO collections (title, year) VALUES
('Хиты 2016', 2016),
('В дорогу', 2020),
('Old hits', 2015),
('Лучший рок', 2020);

INSERT INTO artists_albums (album_id, artist_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4);

INSERT INTO artists_genres (artist_id, genre_id) VALUES
(1, 3),
(2, 3),
(3, 2),
(4, 1);

INSERT INTO collection_tracks (collection_id, track_id) VALUES
(1, 16),
(1, 15),
(2, 16),
(2, 15),
(2, 12),
(2, 7),
(2, 4),
(2, 5),
(2, 1),
(3, 1),
(3, 3),
(3, 4),
(3, 6),
(4, 7),
(4, 8),
(4, 2),
(4, 5),
(4, 8),
(4, 7);



