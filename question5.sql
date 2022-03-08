SELECT name, country 
FROM artists
WHERE name IN ( SELECT artist_name From artworks WHERE  type='Modern' OR type='Baroque' OR type='Renaissance');