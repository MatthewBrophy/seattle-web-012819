SELECT artists.name, albums.title, tracks.name
FROM tracks
JOIN albums
ON tracks.album_id = albums.id
JOIN artists
ON albums.artist_id = artists.id
ORDER BY albums.id DESC;