
-------------------Part A-----------------

select * from Songs
SELECT * FROM Artists
SELECT * FROM Albums

--1. Retrieve a unique genre of songs.
SELECT DISTINCT Genre FROM Songs

--2. Find top 2 albums released before 2010.
SELECT TOP 2 ALBUM_TITLE FROM Albums WHERE Release_year<2010

--3. Insert Data into the Songs Table. (1245, ‘Zaroor’, 2.55, ‘Feel good’, 1005)
INSERT INTO Songs VALUES (1245,'Zaroor',2.55,'Feel good',1005)

--4. Change the Genre of the song ‘Zaroor’ to ‘Happy’
UPDATE Songs SET Song_title='Zaroor' where Song_title='Happy' 

--5. Delete an Artist ‘Ed Sheeran’
DELETE Artists WHERE Artist_id='Ed Sheeran'

--6. Add a New Column for Rating in Songs Table. [Ratings decimal(3,2)]
ALTER TABLE SONGS 
ADD RATINGS DECIMAL(3,2)

--7. Retrieve songs whose title starts with 'S'.
SELECT * FROM SONGS WHERE Song_title LIKE 'S%'

--8. Retrieve all songs whose title contains 'Everybody'.
SELECT * FROM SONGS WHERE Song_title LIKE '%EVERYBODY%'

--9. Display Artist Name in Uppercase.
SELECT UPPER(ARTIST_NAME) FROM Artists

--10. Find the Square Root of the Duration of a Song ‘Good Luck’
SELECT SQRT(DURATION) FROM Songs WHERE Song_title='GOOD LUCK' 

--11. Find Current Date.
SELECT GETDATE()

--12. Find the number of albums for each artist.
SELECT Artist_id,COUNT(ALBUM_ID) FROM Albums GROUP BY Artist_id

--13. Retrieve the Album_id which has more than 5 songs in it.
SELECT Album_id,COUNT(ALBUM_ID)
FROM Albums 
GROUP BY Album_id
HAVING COUNT(ALBUM_ID)>5

--14. Retrieve all songs from the album 'Album1'. (using Subquery)
SELECT SONG_TITLE FROM SONGS
WHERE ALBUM_ID=(SELECT ALBUM_ID FROM Albums WHERE Album_title='ALBUM1')

--15. Retrieve all albums name from the artist ‘Aparshakti Khurana’ (using Subquery)
SELECT ALBUM_TITLE FROM Albums
WHERE Artist_id=(SELECT Artist_id FROM Artists WHERE Artist_name='Aparshakti Khurana')

--16. Retrieve all the song titles with its album title.
SELECT song_title, album_title
FROM SONGS S JOIN ALBUMS A
ON S.Album_id=A.Album_id

--17. Find all the songs which are released in 2020.
SELECT SONG_TITLE 
FROM Songs S JOIN Albums A
ON S.ALBUM_ID=A.ALBUM_ID
WHERE Release_year=2020

--18. Create a view called ‘Fav_Songs’ from the songs table having songs with song_id 101-105.
CREATE VIEW FAV_SONGS
AS SELECT SONG_TITLE,Song_id FROM Songs WHERE Song_id BETWEEN 101 AND 105

SELECT * FROM FAV_SONGS

--19. Update a song name to ‘Jannat’ of song having song_id 101 in Fav_Songs view.
UPDATE FAV_SONGS
SET Song_title='Jannat' WHERE SONG_ID=101

--20. Find all artists who have released an album in 2020. 
SELECT ARTIST_NAME 
FROM Artists AS AR JOIN Albums AS A
ON AR.Artist_id= A.Artist_id
WHERE Release_year=2020


--21. Retrieve all songs by Shreya Ghoshal and order them by duration.
SELECT SONG_TITLE,DURATION
FROM Songs AS S JOIN ALBUMS AS A
ON S.Album_id = A.Album_id
JOIN Artists AS AR
ON A.Artist_id=AR.Artist_id
WHERE Artist_name='Shreya Ghosha'
ORDER BY Duration


--------------------------Part – B-----------------
--22. Retrieve all song titles by artists who have more than one album. 
SELECT S.Song_title
FROM Songs S
JOIN Albums A ON S.Album_id = A.Album_id
WHERE A.Artist_id IN (
    SELECT Artist_id
    FROM Albums
    GROUP BY Artist_id
    HAVING COUNT(Album_id) > 1
);

--23. Retrieve all albums along with the total number of songs. 
SELECT A.ALBUM_TITLE, COUNT(S.SONG_ID)
FROM Songs AS S JOIN Albums AS A
ON A.Album_id=S.Album_id
GROUP BY A.Album_title

--24. Retrieve all songs and release year and sort them by release year. 

SELECT S.SONG_TITLE,A.RELEASE_YEAR
FROM Songs AS S JOIN Albums AS A
ON S.Album_id=S.Album_id
ORDER BY A.Release_year

--25. Retrieve the total number of songs for each genre, showing genres that have more than 2 songs.

SELECT GENRE,COUNT(SONG_ID)
FROM Songs
GROUP BY GENRE
HAVING COUNT(SONG_ID)>2


--26. List all artists who have albums that contain more than 3 songs.

SELECT ARTIST_NAME
FROM Artists AR JOIN Albums A
ON AR.Artist_id=A.Artist_id
WHERE A.Album_id=(
		SELECT Album_id 
		FROM Songs 
		GROUP BY Album_id
		HAVING COUNT(SONG_ID)>3
)

-------------------------Part – C--------------------------

--27. Retrieve albums that have been released in the same year as 'Album4'

SELECT ALBUM_TITLE,Release_year
FROM Albums
WHERE Release_year=(
		SELECT Release_year
		FROM Albums
		WHERE Album_title='ALBUM4'
)

--28. Find the longest song in each genre

SELECT GENRE,MAX(DURATION)
FROM Songs
GROUP BY GENRE

--29. Retrieve the titles of songs released in albums that contain the word 'Album' in the title.

SELECT S.Song_title
FROM Songs S
JOIN Albums A ON S.Album_id = A.Album_id
WHERE A.Album_title LIKE '%Album%';


--30. Retrieve the total duration of songs by each artist where total duration exceeds 15 minutes.

SELECT AR.ARTIST_NAME,SUM(S.DURATION)
FROM Artists AS AR JOIN Albums AS A
ON AR.Artist_id= A.Artist_id
JOIN SONGS AS S
ON A.Album_id=S.Album_id
GROUP BY AR.Artist_name
HAVING SUM(S.DURATION)>15
