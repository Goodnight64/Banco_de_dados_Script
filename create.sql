create database club_travel;

CREATE TABLE traveler (
  id_traveler INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  email varchar(100) NOT NULL,
  image_link varchar(100) NOT NULL,
  image blob 
);

CREATE TABLE destinations (
  id_destinations INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  image_link varchar(100) NOT NULL,
  image blob 
);

CREATE TABLE Events (
  id_events INTEGER PRIMARY KEY,
  start_date datetime NOT NULL,
  end_date datetime NOT NULL,
  description TEXT NOT NULL,
  id_destinations INTEGER,
  CONSTRAINT FK_id_destinations FOREIGN KEY (id_destinations)
  REFERENCES destinations(id_destinations)
  
);

CREATE TABLE news (
   id_news INTEGER PRIMARY KEY,
   title TEXT NOT NULL,
   text TEXT NOT NULL,
   subtitle TEXT NOT NULL,
   date_time datetime NOT NULL,
   image_link varchar(100) NOT NULL,
   image blob,
   id_destinations INTEGER,
   id_traveler INTEGER,
   CONSTRAINT FK_id_destinationsnews FOREIGN KEY (id_destinations)
   REFERENCES destinations(id_destinations),
   CONSTRAINT FK_id_travelernews FOREIGN KEY (id_traveler)
   REFERENCES traveler(id_traveler)
);

CREATE TABLE comments(
    id_comments INTEGER PRIMARY KEY,
    text TEXT NOT NULL,
    date_time datetime NOT NULL,
    id_traveler INTEGER,
    id_news INTEGER,
   CONSTRAINT FK_id_newscomments FOREIGN KEY (id_news)
   REFERENCES news(id_news),
   CONSTRAINT FK_id_travelercomments FOREIGN KEY (id_traveler)
   REFERENCES traveler(id_traveler)
);

