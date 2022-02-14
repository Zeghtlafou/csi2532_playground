CREATE TABLE professeur(
	ssn integer, 
	primary key (ssn)
);

CREATE TABLE cours(
	courseid varchar(255), 
	primary key (courseid)
);

CREATE TABLE teaches(
	ssn integer,
	courseid varchar(255),
	idsemester varchar(255), 
	primary key (ssn, courseid, idsemester),
	foreign key (ssn) references professeur,
	foreign key (courseid) references cours
);