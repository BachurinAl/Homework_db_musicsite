SELECT DISTINCT albums.title
FROM albums
JOIN artists_albums ON albums.id = artists_albums.album_id
JOIN artists ON artists_albums.artist_id = artists.id
JOIN artists_genres ON artists.id = artists_genres.artist_id
GROUP BY albums.id, artists.id
HAVING COUNT(DISTINCT artists_genres.genre_id) > 1;

SELECT tracks.title FROM tracks
LEFT JOIN collection_tracks ON tracks.id = collection_tracks.track_id
WHERE collection_tracks.collection_id IS NULL;

SELECT artists.name FROM artists
LEFT JOIN artists_albums ON artists.id = artists_albums.artist_id
LEFT JOIN albums ON artists_albums.album_id = albums.id
LEFT JOIN tracks ON albums.id = tracks.album_id
WHERE tracks.duration = (
    SELECT MIN(duration) FROM tracks
);

SELECT albums.title FROM albums
JOIN tracks ON albums.id = tracks.album_id
GROUP BY albums.id
HAVING COUNT(tracks.id) = (
    SELECT COUNT(*)
    FROM tracks
    GROUP BY album_id
    ORDER BY COUNT(*) ASC
    LIMIT 1
);