# Movie Night #

IMDB API = www.omdbapi.com

## User Stories ##
```
As a movie lover
So I can view movies
I want to be able to see a list of movies

As a movie lover
So I can find a movie to watch
I'd like to receive a random movie title

As a movie lover
So I can update my list of movies
I'd like to be able to add movies to my list

As a movie lover
So I can update my list of movies
I'd like to be able to remove movies from my list

```

## Dependancies ##
* Capybara
* Rspec
* Sinatra

*NOTE: These can be installed by running `bundle` in the root of the directory.*

## How to Use ##
1. Open Terminal and clone the repository:
```bash
git clone https://github.com/melissasedgwick/movie-night
```
2. Change into the project directory:
```bash
cd movie-night
```
3. Run the program:
```bash
rackup
```
4. Access the web app by visiting `localhost:9292`.

### Create the Database ###
1. In Terminal, connect to PostgreSQL:
```sql
psql
```
2. Create the database:
```sql
CREATE DATABASE movie_night;
```
3. Connect to the database:
```sql
\c movie_night;
```
4. Run the query in db/migrations/01_create_bookmarks_table.sql:
```sql
CREATE TABLE movies(id SERIAL PRIMARY KEY, title VARCHAR(200));
```
