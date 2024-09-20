
--Luca
--gets the number of songs produced by each artist
SELECT a.artist_name, COUNT(s.song_name) as num_of_songs
FROM Artist a
inner JOIN Song s ON a.artist_id = s.artist_id
GROUP BY a.artist_name
order by count(s.song_name) desc;

--gets artists who have released mutliple genres
SELECT a.artist_name, 
       SUM(distinct_genre_count) AS total_genre_count
FROM Artist a
INNER JOIN (
    SELECT s.artist_id,
           COUNT(DISTINCT genre) AS distinct_genre_count
    FROM (
        SELECT artist_id, REGEXP_SUBSTR(genre, '[^/]+', 1, 1) AS genre FROM Song
        UNION ALL
        SELECT artist_id, REGEXP_SUBSTR(genre, '[^/]+', 1, 2) AS genre FROM Song
    ) s
    WHERE s.genre IS NOT NULL
    GROUP BY s.artist_id
) counts ON a.artist_id = counts.artist_id
GROUP BY a.artist_name
having SUM(distinct_genre_count) > 1
ORDER BY SUM(distinct_genre_count) desc;

--gets the most recent album and the year it was released per artist
SELECT a.artist_name, al.album_name, max(EXTRACT(YEAR FROM al.release_date)) AS year
FROM Artist a
inner JOIN Album al ON a.artist_id = al.artist_id
GROUP BY a.artist_name, al.album_name
having max(EXTRACT(YEAR FROM al.release_date)) >= 2020
order by max(al.release_date) desc;


--Richardson
-- Get songs from a RB Playlist
SELECT P.Playlist_Name, S.Song_Name, S.Genre
FROM PLAYLIST P
JOIN PLAYLIST_ITEM PI ON P.playlist_id = PI.playlist_id
JOIN SONG S ON PI.song_id = S.Song_ID
WHERE P.Playlist_Name = 'RB Playlist';


-- Number of songs in each playlist
SELECT P.Playlist_Name, COUNT(PI.song_id) AS Total_Songs
FROM PLAYLIST P
LEFT JOIN PLAYLIST_ITEM PI ON P.playlist_id = PI.playlist_id
GROUP BY P.Playlist_Name;


-- Get songs of each playlist who's genre is hip-hop/rap
SELECT P.PLAYLIST_NAME, S.SONG_NAME, A.ARTIST_NAME, S.GENRE
FROM PLAYLIST P
JOIN PLAYLIST_ITEM PI ON P.PLAYLIST_ID = PI.PLAYLIST_ID
JOIN SONG S ON PI.SONG_ID = S.SONG_ID
JOIN ARTIST A ON S.ARTIST_ID = A.ARTIST_ID
WHERE S.GENRE = 'Hip-Hop/Rap';


--Matt
--HOW MANY ALBUMS HAS EACH ARTIST MADE--
SELECT AR.ARTIST_NAME, COUNT(DISTINCT AL.ALBUM_NAME) AS ALBUMS_MADE
FROM ARTIST AR LEFT JOIN ALBUM AL ON AR.ARTIST_ID = AL.ARTIST_ID
GROUP BY AR.ARTIST_NAME
ORDER BY ALBUMS_MADE DESC;

--HOW MANY ALBUMS WERE RELEASED IN EACH YEAR AND THE ARTISTS WHO RELEASED THOSE ALBUMS--
SELECT TO_CHAR(AL.RELEASE_DATE, 'YYYY') AS RELEASE_YEAR, COUNT(DISTINCT AL.ALBUM_NAME) AS ALBUMS_MADE, 
LISTAGG(DISTINCT(AR.ARTIST_NAME), ', ') AS ARTISTS
FROM ALBUM AL JOIN ARTIST AR ON AL.ARTIST_ID = AR.ARTIST_ID
GROUP BY TO_CHAR(AL.RELEASE_DATE, 'YYYY')
ORDER BY RELEASE_YEAR;

--LIST ALBUMS THAT CONTAIN MULTIPLE GENRES OF SONGS--
SELECT AL.ALBUM_NAME, AR.ARTIST_NAME, LISTAGG(S.GENRE, ', ') AS GENRES
FROM ALBUM AL
JOIN ALBUM_SONG ASG ON AL.ALBUM_ID = ASG.ALBUM_ID
JOIN SONG S ON ASG.SONG_ID = S.SONG_ID
JOIN ARTIST AR ON AL.ARTIST_ID = AR.ARTIST_ID
GROUP BY AL.ALBUM_NAME, AR.ARTIST_NAME, AL.ALBUM_ID
HAVING COUNT(DISTINCT S.GENRE) > 1;


--Alla
-- 1 --FIND THE MOST POPULAR ARTIST IN THE PLAYLIST
SELECT a.artist_name, p.playlist_name, COUNT(*) AS song_count
FROM artist a
INNER JOIN song s ON a.artist_id = s.artist_id
INNER JOIN playlist_item pi ON s.song_id = pi.song_id
INNER JOIN playlist p ON pi.playlist_id = p.playlist_id
GROUP BY a.artist_name, p.playlist_name
ORDER BY song_count DESC;

-- 2 --FIND SONGS THAT APPEAR ON MORE THAN IN ONE PLAYLIST
SELECT s.song_name, a.artist_name, p.playlist_name
FROM song s
INNER JOIN artist a ON s.artist_id = a.artist_id
INNER JOIN playlist_item pi ON s.song_id = pi.song_id
INNER JOIN playlist p ON pi.playlist_id = p.playlist_id
WHERE s.song_id IN (
        SELECT song_id
        FROM playlist_item
        GROUP BY song_id
        HAVING COUNT (playlist_id) > 1
    )
ORDER BY
    s.song_name, a.artist_name, p.playlist_name;

-- 3 --FIND ARTISTS WITH LONGEST TIME SPAN BETWEEN THEIR EARLIEST AND LATEST SONG RELEASES
SELECT 
    a.artist_name,
    MIN(s.release_date) AS first_song_date,
    MAX(s.release_date) AS latest_song_date,
    MAX(s.release_date) - MIN(s.release_date) AS song_period
FROM artist a
INNER JOIN song s ON a.artist_id = s.artist_id
GROUP BY a.artist_name
HAVING COUNT(s.song_id) > 1
ORDER BY song_period DESC;