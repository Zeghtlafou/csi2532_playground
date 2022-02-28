SELECT season,
split_part(season,'-',1)session ,
split_part(season,'-',2)session,
*FROM teams;