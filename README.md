# Movie Night #

IMDB API = www.omdapi.com

## User Stories ##
```
As a movie lover
So I can view movies
I want to be able to see a list of movies

As a movie lover
So I can find a film to watch
I'd like to receive a random movie title
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
CREATE DATABASE bookmark_manager;
```
3. Connect to the database:
```sql
\c bookmark_manager;
```
4. Run the query in db/migrations/01_create_bookmarks_table.sql:
```sql
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```
