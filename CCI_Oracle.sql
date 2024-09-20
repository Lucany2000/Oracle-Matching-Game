-- CREATE TABLES --
CREATE TABLE ARTIST (
    ARTIST_ID NUMBER Primary Key,
    ARTIST_NAME VARCHAR(255)
);

CREATE TABLE SONG (
    SONG_ID NUMBER Primary Key,
    SONG_NAME VARCHAR(255),
    ARTIST_ID NUMBER,
    GENRE VARCHAR(255),
    RELEASE_DATE DATE,
    FOREIGN KEY(ARTIST_ID) REFERENCES ARTIST(ARTIST_ID) ON DELETE CASCADE
);

CREATE TABLE ALBUM(
    album_id number PRIMARY KEY,
    album_name VARCHAR(255),
    artist_id NUMBER,
    RELEASE_DATE DATE,
    FOREIGN KEY(ARTIST_ID) REFERENCES ARTIST(ARTIST_ID) ON DELETE CASCADE
);

CREATE TABLE ALBUM_SONG(
    album_id NUMBER,
    song_id NUMBER,    
    FOREIGN KEY(album_id) REFERENCES ALBUM(album_id) ON DELETE CASCADE,
    FOREIGN KEY(song_id) REFERENCES SONG(song_id) ON DELETE CASCADE,
    PRIMARY KEY(album_id, song_id) 
);

CREATE TABLE PLAYLIST (
    playlist_id Number Primary Key,
    PLAYLIST_NAME VARCHAR(255) UNIQUE
);

CREATE TABLE PLAYLIST_ITEM(
    playlist_id Number,
    song_id Number,  
    FOREIGN KEY(playlist_id) REFERENCES PLAYLIST(playlist_id) ON DELETE CASCADE,
    FOREIGN KEY(song_id) REFERENCES SONG(SONG_ID) ON DELETE CASCADE,
    PRIMARY KEY(playlist_id, song_id)
);

set define off;

-- Insert into Artist Table
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (1, 'Ed Sheeran');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (2, 'Migos');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (3, 'The Chainsmokers');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (4, 'DJ Khaled');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (5, 'Taylor Swift');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (6, 'Camila Cabello');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (7, 'Charlie Puth');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (8, 'BLACKPINK');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (9, 'Maroon 5');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (10, 'Drake');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (11, 'Travis Scott');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (12, 'Luis Fonsi');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (13, 'Ariana Grande');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (14, 'Billie Eilish');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (15, 'BTS');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (16, 'Jonas Brothers');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (17, 'Lil Nas X');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (18, 'Arizona Zervas');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (19, 'Tones And I');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (20, 'Dua Lipa');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (21, 'Justin Bieber');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (22, 'The Weeknd');
INSERT INTO Artist (Artist_ID, Artist_Name) VALUES (23, '6ix9ine');


-- Song Table 
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (1, 'Perfect', 1, 'Pop/Ballad', TO_DATE('3/3/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (2, 'Shape of You', 1, 'Pop', TO_DATE('3/3/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (3, 'Bad and Boujee (feat. Lil Uzi Vert)', 2, 'Hip-Hop/Rap', TO_DATE('4/7/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (4, 'Something Just Like This', 3, 'Pop/Dance', TO_DATE('4/7/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (5, 'I''m the One (feat. Justin Bieber, Quavo, Chance the Rapper & Lil Wayne)', 4, 'Hip-Hop/Rap', TO_DATE('6/22/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (6, 'Look What You Made Me Do', 5, 'Pop/Electropop', TO_DATE('11/10/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (7, 'Havana (feat. Young Thug)', 6, 'Pop/Latin', TO_DATE('1/12/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (8, 'Attention', 7, 'Pop/Funk', TO_DATE('5/11/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (9, 'DDU-DU DDU-DU', 8, 'K-Pop', TO_DATE('6/15/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (10, 'Girls Like You (feat. Cardi B) - Cardi B Version', 9, 'Pop', TO_DATE('6/15/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (11, 'God''s Plan', 10, 'Hip-Hop/Rap', TO_DATE('6/29/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (12, 'SICKO MODE', 11, 'Hip-Hop/Rap', TO_DATE('8/3/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (13, 'Despacito - Remix', 12, 'Latin/Reggaeton', TO_DATE('2/1/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (14, '7 rings', 13, 'Pop/RB', TO_DATE('2/8/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (15, 'bad guy', 14, 'Pop/Electropop', TO_DATE('3/29/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (16, 'Kill This Love', 8, 'K-Pop', TO_DATE('4/5/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (17, 'Boy With Luv (feat. Halsey)', 15, 'K-Pop/Pop', TO_DATE('4/12/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (18, 'Sucker', 16, 'Pop', TO_DATE('6/7/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (19, 'Old Town Road - Remix', 17, 'Country Rap', TO_DATE('6/21/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (20, 'ROXANNE', 18, 'Hip-Hop/Rap', TO_DATE('10/10/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (21, 'Dance Monkey', 19, 'Pop/Indie Pop', TO_DATE('10/17/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (22, 'Don''t Start Now', 20, 'Pop/Disco', TO_DATE('10/31/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (23, 'Yummy', 21, 'R&B/Pop', TO_DATE('1/3/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (24, 'Intentions (feat. Quavo)', 21, 'R&B/Pop', TO_DATE('2/14/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (25, 'Blinding Lights', 22, 'Synth-Pop', TO_DATE('3/20/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (26, 'Toosie Slide', 10, 'Hip-Hop/Rap', TO_DATE('4/3/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (27, 'GOOBA', 23, 'Hip-Hop/Rap', TO_DATE('5/8/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (28, 'How You Like That', 8, 'K-Pop', TO_DATE('10/2/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_ID, Song_Name, Artist_ID, Genre, Release_Date) VALUES (29, 'Dynamite', 15, 'Pop/Disco', TO_DATE('11/20/2020', 'MM/DD/YYYY'));


--Insert data to Album table
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (1, '÷', 1, TO_DATE('3-Mar-17', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (2, 'Culture', 2, TO_DATE('7-Apr-17', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (3, 'Memories...Do Not Open', 3, TO_DATE('7-Apr-17', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (4, 'Grateful', 4, TO_DATE('22-Jun-17', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (5, 'reputation', 5, TO_DATE('10-Nov-17', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (6, 'Camila', 6, TO_DATE('12-Jan-18', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (7, 'Voicenotes', 7, TO_DATE('11-May-18', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (8, 'SQUARE UP', 8, TO_DATE('15-Jun-18', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (9, 'Red Pill Blues (Deluxe)', 9, TO_DATE('15-Jun-18', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (10, 'Scorpion', 10, TO_DATE('29-Jun-18', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (11, 'ASTROWORLD', 11, TO_DATE('3-Aug-18', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (12, 'VIDA', 12, TO_DATE('1-Feb-19', 'DD-Mon-YY'));
INsERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (14, 'thank u, next', 13, TO_DATE('8-Feb-19', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (14, 'WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?', 14, TO_DATE('29-Mar-19', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (15, 'KILL THIS LOVE', 8, TO_DATE('5-Apr-19', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (16, 'MAP OF THE SOUL : PERSONA', 15, TO_DATE('12-Apr-19', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (17, 'Happiness Begins', 16, TO_DATE('7-Jun-19', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (18, '7 EP', 17, TO_DATE('21-Jun-19', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (19, 'ROXANNE', 18, TO_DATE('10-Oct-19', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (20, 'Dance Monkey (Stripped Back) / Dance Monkey', 19, TO_DATE('17-Oct-19', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (21, 'Don''t Start Now', 20, TO_DATE('31-Oct-19', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (22, 'Yummy', 21, TO_DATE('3-Jan-20', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (23, 'Changes', 21, TO_DATE('14-Feb-20', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (24, 'After Hours', 22, TO_DATE('20-Mar-20', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (25, 'Toosie Slide', 10, TO_DATE('3-Apr-20', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (26, 'GOOBA', 23, TO_DATE('8-May-20', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (27, 'THE ALBUM', 8, TO_DATE('2-Oct-20', 'DD-Mon-YY'));
INSERT INTO Album (Album_ID, Album_Name, Artist_ID, Release_Date) VALUES (28, 'BE', 15, TO_DATE('20-Nov-20', 'DD-Mon-YY'));


-- Insert data into the Playlist table
INSERT INTO Playlist (Playlist_ID, Playlist_Name) VALUES (1, 'RB Playlist');
INSERT INTO Playlist (Playlist_ID, Playlist_Name) VALUES (2, 'rap playlist');
INSERT INTO Playlist (Playlist_ID, Playlist_Name) VALUES (3, 'idk what to call this');


-- Insert data into PLAYLIST_ITEM table
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (1, 14); 
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (1, 23);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (1, 24);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (2, 3);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (2, 5); 
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (2, 11);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (2, 12);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (2, 20);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (2, 26);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (2, 27);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (3, 1);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (3, 8);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (3, 12);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (3, 17);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (3, 23);
INSERT INTO PLAYLIST_ITEM (playlist_id, song_id) VALUES (3, 28);

-- Insert data into ALBUM_SONG table
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (1, 1); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (1, 2);  
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (2, 3);  
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (3, 4); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (4, 5);  
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (5, 6); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (6, 7); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (7, 8); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (8, 9);  
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (9, 10);
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (10, 11); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (11, 12); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (12, 13); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (13, 14); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (14, 15); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (15, 16); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (16, 17);
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (17, 18); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (18, 19); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (19, 20); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (20, 21); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (21, 22);
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (22, 23);
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (23, 24); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (24, 25); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (25, 26); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (26, 27); 
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (27, 28);
INSERT INTO ALBUM_SONG (album_id, song_id) VALUES (28, 29);


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


drop table artist




/*


select * from artist;

select * from song;

select a.artist_name, s.song_name
FROM Artist a, Song s
WHERE a.artist_id = s.song_id;


select a.artist_name, s.song_name
FROM Artist a JOIN Song s
ON a.artist_id = s.song_id;


INSERT INTO Playlist (Playlist_ID, Playlist_Name)
VALUES ('RB Playlist', '7 rings', 'Ariana Grande');



select * from (SELECT * FROM Artist INNER JOIN SONG ON Song.Artist_Name=Artist.Artist_Name);

select Artist.ARTIST_NAME from (SELECT * FROM Artist INNER JOIN SONG ON Song.ARTIST_NAME=Artist.ARTIST_NAME)
WHERE ARTTIST_NAME='Ed Sheeran';

*/