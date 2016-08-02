# ActiveRecord Associations

### Part 1

Fire up psql and create a database called `devflix`.

Run the `devflix.sql` file for your `devflix` by typing`psql -d devflix -f devflix.sql` into your terminal (not in psql). This will create the players table in your devflix database.

### Part 2

Run the `load_data.rb` Ruby program __ONCE__ to populate the database. It reads in the CSV information from the `data.csv` textfile and populates your database.

### Part 3

1. Set up classes `Movie`, `Theater`, and `TheaterMovie` in `models/movie.rb`, `models/theater.rb`, and `models/theater_movies.rb`. These classes should inherit from `ActiveRecord::Base`.
  * Once this is done, you should be able to access your objects by running `ruby repl.rb`. Try running the file and calling `Movie.all`. If you edit your Ruby files, you'll need to restart the REPL.
  * Practice creating a new `Movie` object and saving it to the database. This part will not be submitted.
  * Run `Movie.where('rating = 97')`. What does that do?
2. Set up associations, so that a movie can play at many theaters and a theater plays many movies.
  * Once this is correct, running `Movie.first.theaters` in your REPL should not return an error.
3. Validate that a movie is saved with a title and rating, and that a theater is saved with a name.
4. Write a named scope `elite`, so that `Movie.elite` will return all movies with ratings of 97 or above.
