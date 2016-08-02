DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS theaters;
DROP TABLE IF EXISTS theater_movies;

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  rating INTEGER
);

CREATE TABLE theaters (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE theater_movies (
  id SERIAL PRIMARY KEY,
  theater_id INTEGER,
  movie_id INTEGER
);
