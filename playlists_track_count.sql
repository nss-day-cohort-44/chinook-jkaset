SELECT COUNT(t.TrackId), p.Name
FROM PlaylistTrack t
JOIN Playlist p 
  ON t.PlaylistId = p.PlaylistId
GROUP BY p.Name;