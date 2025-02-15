SELECT genres.title, COUNT(artists_genres.artist_id) AS artist_count FROM genres
LEFT JOIN artists_genres ON genres.id = artists_genres.genre_id
LEFT JOIN artists ON artists_genres.artist_id = artists.id
GROUP BY genres.title;

SELECT COUNT(tracks.id) AS track_count FROM tracks
LEFT JOIN albums ON tracks.album_id = albums.id
WHERE albums.year BETWEEN 2019 AND 2020;

SELECT albums.title, AVG(tracks.duration) AS avg_duration FROM albums
LEFT JOIN tracks ON albums.id = tracks.album_id
GROUP BY albums.title;

SELECT artists.name FROM artists
WHERE artists.name NOT IN (
    SELECT artists.name FROM artists
    JOIN artists_albums ON artists.id = artists_albums.artist_id
    JOIN albums ON artists_albums.album_id = albums.id
    WHERE albums.year = 2020
)
GROUP BY artists.name;

SELECT collections.title FROM collections
LEFT JOIN collection_tracks ON collections.id = collection_tracks.collection_id
LEFT JOIN tracks ON collection_tracks.track_id = tracks.id
LEFT JOIN albums ON tracks.album_id = albums.id
LEFT JOIN artists_albums ON albums.id = artists_albums.album_id
LEFT JOIN artists ON artists_albums.artist_id = artists.id
WHERE artists.name = 'Martin Garrix'
GROUP BY collections.title;