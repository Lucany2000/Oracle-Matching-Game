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
    FOREIGN KEY(ARTIST_ID) REFERENCES ARTIST(ARTIST_ID)
);

insert into artist (artist_id, artist_name) values (1, 'Ed Sheeran');
insert into artist (artist_id, artist_name) values (2, 'Migos');
insert into song(song_id, song_name, artist_id, genre, release_date) 
values (1, 'Perfect', 1, 'Pop/Ballad', TO_DATE('3/3/2017', 'MM/DD/YYYY'));
insert into song(song_id, song_name, artist_id, genre, release_date)
values (2, 'Shape of You', 1, 'Pop', TO_DATE('3/3/2017', 'MM/DD/YYYY'));

--schools out , alice cooper(1)
--schools out, alice cooper(2)   
-- Examples from discussion
insert into artist (artist_id, artist_name) values (1, 'Ed Sheeran');
insert into artist (artist_id, artist_name) values (2, 'Migos');
insert into song(song_id, song_name, artist_id, genre, release_date) 
values (1, 'Perfect', 1, 'Pop/Ballad', TO_DATE('3/3/2017', 'MM/DD/YYYY'));
insert into song(song_id, song_name, artist_id, genre, release_date)
values (2, 'Shape of You', 1, 'Pop', TO_DATE('3/3/2017', 'MM/DD/YYYY'));

select * from artist;

select * from song;

select a.artist_name, s.song_name
FROM Artist a, Song s
WHERE a.artist_id = s.song_id;


select a.artist_name, s.song_name
FROM Artist a JOIN Song s
ON a.artist_id = s.song_id;

CREATE TABLE ALBUM(
    -- NEED ID PRIMARY KEY
    aibum_id number PRIMARY KEY,
    ALBUM_NAME VARCHAR(255),
    artist_id NUMBER,
    --SONG_NAME VARCHAR(255),
    RELEASE_DATE DATE,
    -- Need Foreign Key to reference artisti id
    CONSTRAINT album_artist_song unique (ALBUM_NAME, ARTIST_NAME)
);

CREATE TABLE ALBUM_SONG(
    album_id NUMBER,
    song_id NUMBER,
    FOREIGN KEY(song_id) REFERENCES SONG(song_id),
    FOREIGN KEY(album_id) REFERENCES ALBUM(album_id),
    PRIMARY KEY(album_name, song_id)
)


CREATE TABLE PLAYLIST (
    PID Number Primary Key,
    PLAYLIST_NAME VARCHAR(255) UNIQUE,
    --CONSTRAINT playlist_song_artist UNIQUE (PLAYLIST_NAME, SONG_NAME, ARTIST_NAME)
);

CREATE TABLE PLAYLIST_ITEM(
    playlist_id Number,
    song_id Number,  
    FOREIGN KEY(song_id) REFERENCES SONG(SONG_ID),
    FOREIGN KEY(playlist_id) REFERENCES PLAYLIST(PID)
    PRIMARY KEY(playlist_id, song_id)
);




-- Insert statements
INSERT INTO Artist (Artist_Name)
VALUES ('Ed Sheeran');
INSERT INTO Artist (Artist_Name)
VALUES ('Migos');
INSERT INTO Artist (Artist_Name)
VALUES ('The Chainsmokers');
INSERT INTO Artist (Artist_Name)
VALUES ('DJ Khaled');
INSERT INTO Artist (Artist_Name)
VALUES ('Taylor Swift');
INSERT INTO Artist (Artist_Name)
VALUES ('Camila Cabello');
INSERT INTO Artist (Artist_Name)
VALUES ('Charlie Puth');
INSERT INTO Artist (Artist_Name)
VALUES ('BLACKPINK');
INSERT INTO Artist (Artist_Name)
VALUES ('Maroon 5');
INSERT INTO Artist (Artist_Name)
VALUES ('Drake');
INSERT INTO Artist (Artist_Name)
VALUES ('Travis Scott');
INSERT INTO Artist (Artist_Name)
VALUES ('Luis Fonsi');
INSERT INTO Artist (Artist_Name)
VALUES ('Ariana Grande');
INSERT INTO Artist (Artist_Name)
VALUES ('Billie Eilish');
INSERT INTO Artist (Artist_Name)
VALUES ('BTS');
INSERT INTO Artist (Artist_Name)
VALUES ('Jonas Brothers');
INSERT INTO Artist (Artist_Name)
VALUES ('Lil Nas X');
INSERT INTO Artist (Artist_Name)
VALUES ('Arizona Zervas');
INSERT INTO Artist (Artist_Name)
VALUES ('Tones And I');
INSERT INTO Artist (Artist_Name)
VALUES ('Dua Lipa');
INSERT INTO Artist (Artist_Name)
VALUES ('Justin Bieber');
INSERT INTO Artist (Artist_Name)
VALUES ('The Weeknd');
INSERT INTO Artist (Artist_Name)
VALUES ('6ix9ine');


INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Perfect', 'Ed Sheeran', 'Pop/Ballad', TO_DATE('3/3/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Shape of You', 'Ed Sheeran', 'Pop', TO_DATE('3/3/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Bad and Boujee (feat. Lil Uzi Vert)', 'Migos', 'Hip-Hop/Rap', TO_DATE('4/7/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Something Just Like This', 'The Chainsmokers', 'Pop/Dance', TO_DATE('4/7/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('I''m the One (feat. Justin Bieber, Quavo, Chance the Rapper & Lil Wayne)', 'DJ Khaled', 'Hip-Hop/Rap', TO_DATE('6/22/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Look What You Made Me Do', 'Taylor Swift', 'Pop/Electropop', TO_DATE('11/10/2017', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Havana (feat. Young Thug)', 'Camila Cabello', 'Pop/Latin', TO_DATE('1/12/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Attention', 'Charlie Puth', 'Pop/Funk', TO_DATE('5/11/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('DDU-DU DDU-DU', 'BLACKPINK', 'K-Pop', TO_DATE('6/15/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Girls Like You (feat. Cardi B) - Cardi B Version', 'Maroon 5', 'Pop', TO_DATE('6/15/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('God''s Plan', 'Drake', 'Hip-Hop/Rap', TO_DATE('6/29/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('SICKO MODE', 'Travis Scott', 'Hip-Hop/Rap', TO_DATE('8/3/2018', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Despacito - Remix', 'Luis Fonsi', 'Latin/Reggaeton', TO_DATE('2/1/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('7 rings', 'Ariana Grande', 'Pop/R&B', TO_DATE('2/8/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('bad guy', 'Billie Eilish', 'Pop/Electropop', TO_DATE('3/29/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Kill This Love', 'BLACKPINK', 'K-Pop', TO_DATE('4/5/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Boy With Luv (feat. Halsey)', 'BTS', 'K-Pop/Pop', TO_DATE('4/12/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Sucker', 'Jonas Brothers', 'Pop', TO_DATE('6/7/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Old Town Road - Remix', 'Lil Nas X', 'Country Rap', TO_DATE('6/21/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('ROXANNE', 'Arizona Zervas', 'Hip-Hop/Rap', TO_DATE('10/10/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Dance Monkey', 'Tones And I', 'Pop/Indie Pop', TO_DATE('10/17/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Don''t Start Now', 'Dua Lipa', 'Pop/Disco', TO_DATE('10/31/2019', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Yummy', 'Justin Bieber', 'R&B/Pop', TO_DATE('1/3/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Intentions (feat. Quavo)', 'Justin Bieber', 'R&B/Pop', TO_DATE('2/14/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Blinding Lights', 'The Weeknd', 'Synth-Pop', TO_DATE('3/20/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Toosie Slide', 'Drake', 'Hip-Hop/Rap', TO_DATE('4/3/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('GOOBA', '6ix9ine', 'Hip-Hop/Rap', TO_DATE('5/8/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('How You Like That', 'BLACKPINK', 'K-Pop', TO_DATE('10/2/2020', 'MM/DD/YYYY'));
INSERT INTO song (Song_Name, Artist_Name, Genre, Release_Date)
VALUES ('Dynamite', 'BTS', 'Pop/Disco', TO_DATE('11/20/2020', 'MM/DD/YYYY'));


INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Perfect', 'Ed Sheeran', '÷', TO_DATE('3-Mar-17', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Shape of You', 'Ed Sheeran', '÷', TO_DATE('3-Mar-17', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Bad and Boujee (feat. Lil Uzi Vert)', 'Migos', 'Culture', TO_DATE('7-Apr-17', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Something Just Like This', 'The Chainsmokers', 'Memories...Do Not Open', TO_DATE('7-Apr-17', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('I''m the One (feat. Justin Bieber, Quavo, Chance the Rapper & Lil Wayne)', 'DJ Khaled', 'Grateful', TO_DATE('22-Jun-17', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Look What You Made Me Do', 'Taylor Swift', 'reputation', TO_DATE('10-Nov-17', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Havana (feat. Young Thug)', 'Camila Cabello', 'Camila', TO_DATE('12-Jan-18', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Attention', 'Charlie Puth', 'Voicenotes', TO_DATE('11-May-18', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('DDU-DU DDU-DU', 'BLACKPINK', 'SQUARE UP', TO_DATE('15-Jun-18', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Girls Like You (feat. Cardi B) - Cardi B Version', 'Maroon 5', 'Red Pill Blues (Deluxe)', TO_DATE('15-Jun-18', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('God''s Plan', 'Drake', 'Scorpion', TO_DATE('29-Jun-18', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('SICKO MODE', 'Travis Scott', 'ASTROWORLD', TO_DATE('3-Aug-18', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Despacito - Remix', 'Luis Fonsi', 'VIDA', TO_DATE('1-Feb-19', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('7 rings', 'Ariana Grande', 'thank u, next', TO_DATE('8-Feb-19', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('bad guy', 'Billie Eilish', 'WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?', TO_DATE('29-Mar-19', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Kill This Love', 'BLACKPINK', 'KILL THIS LOVE', TO_DATE('5-Apr-19', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Boy With Luv (feat. Halsey)', 'BTS', 'MAP OF THE SOUL : PERSONA', TO_DATE('12-Apr-19', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Sucker', 'Jonas Brothers', 'Happiness Begins', TO_DATE('7-Jun-19', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Old Town Road - Remix', 'Lil Nas X', '7 EP', TO_DATE('21-Jun-19', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('ROXANNE', 'Arizona Zervas', 'ROXANNE', TO_DATE('10-Oct-19', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Dance Monkey', 'Tones And I', 'Dance Monkey (Stripped Back) / Dance Monkey', TO_DATE('17-Oct-19', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Don''t Start Now', 'Dua Lipa', 'Don''t Start Now', TO_DATE('31-Oct-19', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Yummy', 'Justin Bieber', 'Yummy', TO_DATE('3-Jan-20', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Intentions (feat. Quavo)', 'Justin Bieber', 'Changes', TO_DATE('14-Feb-20', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Blinding Lights', 'The Weeknd', 'After Hours', TO_DATE('20-Mar-20', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Toosie Slide', 'Drake', 'Toosie Slide', TO_DATE('3-Apr-20', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('GOOBA', '6ix9ine', 'GOOBA', TO_DATE('8-May-20', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('How You Like That', 'BLACKPINK', 'THE ALBUM', TO_DATE('2-Oct-20', 'DD-Mon-YY'));
INSERT INTO album (Song_Name, Artist_Name, Album_Name, Release_Date)
VALUES ('Dynamite', 'BTS', 'BE', TO_DATE('20-Nov-20', 'DD-Mon-YY'));


INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('RB Playlist', '7 rings', 'Ariana Grande');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('RB Playlist', 'Yummy', 'Justin Bieber');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('RB Playlist', 'Intentions (feat. Quavo)', 'Justin Bieber');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('rap playlist', 'Bad and Boujee (feat. Lil Uzi Vert)', 'Migos');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('rap playlist', 'I''m the One (feat. Justin Bieber, Quavo, Chance the Rapper & Lil Wayne)', 'DJ Khaled');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('rap playlist', 'God''s Plan', 'Drake');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('rap playlist', 'SICKO MODE', 'Travis Scott');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('rap playlist', 'ROXANNE', 'Arizona Zervas');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('rap playlist', 'Toosie Slide', 'Drake');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('rap playlist', 'GOOBA', '6ix9ine');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('idk what to call this', 'Perfect', 'Ed Sheeran');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('idk what to call this', 'Attention', 'Charlie Puth');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('idk what to call this', 'SICKO MODE', 'Travis Scott');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('idk what to call this', 'Boy With Luv (feat. Halsey)', 'BTS');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('idk what to call this', 'Yummy', 'Justin Bieber');
INSERT INTO Playlist (Playlist_Name, Song_Name, Artist_Name)
VALUES ('idk what to call this', 'How You Like That', 'BLACKPINK');

select * from (SELECT * FROM Artist INNER JOIN SONG ON Song.Artist_Name=Artist.Artist_Name);

select Artist.ARTIST_NAME from (SELECT * FROM Artist INNER JOIN SONG ON Song.ARTIST_NAME=Artist.ARTIST_NAME)
WHERE ARTTIST_NAME='Ed Sheeran';

drop table playlist

