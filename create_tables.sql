CREATE TABLE IF NOT EXISTS genres (
id SERIAL PRIMARY KEY,
title VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_genres (
id SERIAL PRIMARY KEY,
artist_id INTEGER REFERENCES artists(id),
genre_id INTEGER REFERENCES genres(id)
);

CREATE TABLE IF NOT EXISTS albums (
id SERIAL PRIMARY KEY,
title VARCHAR(100) NOT NULL,
year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_albums (
id SERIAL PRIMARY KEY,
album_id INTEGER REFERENCES albums(id),
artist_id INTEGER REFERENCES artists(id)
);

CREATE TABLE IF NOT EXISTS tracks (
id SERIAL PRIMARY KEY,
title VARCHAR(100) NOT NULL,
duration INTEGER NOT NULL,
album_id INTEGER REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS collections (
id SERIAL PRIMARY KEY,
title VARCHAR(100) NOT NULL,
year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_tracks (
id SERIAL PRIMARY KEY,
collection_id INTEGER REFERENCES collections(id),
track_id INTEGER REFERENCES tracks(id)
);

