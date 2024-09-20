-- CREATE TABLES --
CREATE TABLE ARTIST (
    ARTIST_ID NUMBER Primary Key,
    ARTIST_NAME VARCHAR(255)
);

--insert statement
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (1, 'Ed Sheeran');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (8, 'BLACKPINK');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (15, 'BTS');

--update statement
UPDATE Artist
SET Artist_id = 2
WHERE Artist_Name = 'BTS';

--delete statement
DELETE FROM Artist WHERE artist_Name = 'BLACKPINK';

--Select Statements

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


--drop statement
drop table artist

