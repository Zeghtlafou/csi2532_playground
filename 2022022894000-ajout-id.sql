ALTER TABLE teams
DROP COLUMN id;

ALTER TABLE teams
ADD id serial;
