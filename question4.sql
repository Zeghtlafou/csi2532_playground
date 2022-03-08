SELECT name, birthplace 
FROM artists,EXTRACT(YEAR FROM dateofbirth) as year 
WHERE year >1880 and year<1930;