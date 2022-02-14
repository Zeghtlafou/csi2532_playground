CREATE TABLE professeur(
	ssn integer, 
	primary key (ssn)
);

CREATE TABLE cours(
	courseid varchar(255), 
	primary key (courseid)
);

CREATE TABLE equipe_de_professeur(
	idequipe varchar(255),
	primary key (idequipe)
);

CREATE TABLE font_partie(
	ssn integer, 
	idequipe varchar(255),
	primary key (ssn, idequipe),
	foreign key (ssn) references professeur,
	foreign key (idequipe) references equipe_de_professeur
);


CREATE TABLE teaches(
	idequipe varchar(255),
	courseid varchar(255),
	idsemester varchar(255), 
	primary key (idequipe, courseid, idsemester),
	foreign key (idequipe) references equipe_de_professeur,
	foreign key (courseid) references cours
);