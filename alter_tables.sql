ALTER TABLE movie
ADD CONSTRAINT id
PRIMARY KEY (id);

ALTER TABLE genre
ADD CONSTRAINT genre_pk
PRIMARY KEY (id);

ALTER TABLE productioncompany
ADD CONSTRAINT productioncompany_pk
PRIMARY KEY (id);

ALTER TABLE collection
ADD CONSTRAINT collection_pk
PRIMARY KEY (id);

ALTER TABLE movie_cast
ADD CONSTRAINT movie_cast_pk
PRIMARY KEY (cid);

ALTER TABLE movie_crew
ADD CONSTRAINT movie_crew_pk
PRIMARY KEY (cid);

ALTER TABLE keyword
ADD CONSTRAINT Keyword_pk
PRIMARY KEY (id);

ALTER TABLE belongsTocollection
 ADD CONSTRAINT FK_belongsTocollection FOREIGN
KEY (movie_id)
 REFERENCES movie(id);


ALTER TABLE hasGenre
 ADD CONSTRAINT FK_hasGenre FOREIGN
KEY (movie_id)
 REFERENCES movie(id);

ALTER TABLE hasProductioncompany
 ADD CONSTRAINT FK_hasProductioncompany FOREIGN
KEY (movie_id)
 REFERENCES movie(id);


ALTER TABLE ratings
 ADD CONSTRAINT FK_movieid FOREIGN
KEY (movie_id)
 REFERENCES movie(id);

ALTER TABLE movie_cast
 ADD CONSTRAINT FK_movie_cast FOREIGN
KEY (movie_id)
 REFERENCES movie(id);

ALTER TABLE movie_crew
 ADD CONSTRAINT FK_movie_crew FOREIGN
KEY (movie_id)
 REFERENCES movie(id);

ALTER TABLE hasKeywords
 ADD CONSTRAINT FK_hasKeyword_movie_id FOREIGN
KEY (movie_id)
 REFERENCES movie(id);


ALTER TABLE hasGenre
ADD CONSTRAINT FK_genre_id FOREIGN
KEY (genre_id)
REFERENCES genre(id); 

ALTER TABLE haskeywords
ADD CONSTRAINT FK_haskeywordss_id FOREIGN
KEY (keywords)
REFERENCES keyword(id); 

ALTER TABLE  hasProductioncompany
 ADD CONSTRAINT FK_pc_id FOREIGN
KEY (pc_id)
 REFERENCES productioncompany(id);


 