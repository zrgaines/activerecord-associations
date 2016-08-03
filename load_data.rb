require 'pg'

db_conn = PG.connect(:dbname => 'funmovies', :host => 'localhost')

movies = File.new("data/movies.csv", "a+")
theaters = File.new("data/theaters.csv", "a+")
theater_movies = File.new("data/theater_movies.csv", "a+")

movies.each do |line|
  movie = line.split(",")
  title, rating = movie[0], movie[1]

  sql  = "INSERT INTO movies (title, rating)"
  sql += "VALUES ('#{title}', '#{rating}');"

  db_conn.exec(sql)
end

theaters.each do |line|
  name = line.strip

  sql  = "INSERT INTO theaters (name)"
  sql += "VALUES ('#{name}');"

  db_conn.exec(sql)
end

theater_movies.each do |line|
  theater_movie = line.split(",")
  theater_id, movie_id = theater_movie[0], theater_movie[1]

  sql  = "INSERT INTO theater_movies (theater_id, movie_id)"
  sql += "VALUES ('#{theater_id}', '#{movie_id}');"

  db_conn.exec(sql)
end

movies.close
theaters.close
theater_movies.close

db_conn.close
