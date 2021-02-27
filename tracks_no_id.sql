SELECT a.Title as AlbumTitle,
  m.Name as MediaType,
  t.Name as TrackName, 
  g.Name as GenreName
FROM Track t
JOIN Genre g 
  ON t.GenreId = g.GenreId
JOIN Album a 
  ON t.AlbumId = a.AlbumId
JOIN MediaType m 
  ON t.MediaTypeId = m.MediaTypeId
GROUP BY t.Name;


