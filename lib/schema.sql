-- All tables must have a PRIMARY KEY on the id
-- The Series table should have a title and belong to an author and a sub-genre
CREATE TABLE series(
    id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER,
    subgenre_id INTEGER
);
-- The Sub-Genres table has a name
CREATE TABLE subgenres(
    id INTEGER PRIMARY KEY,
    name TEXT
);
-- The Authors table has a name
CREATE TABLE authors(
    id INTEGER PRIMARY KEY,
    name TEXT
);
--T he Books table has a title and year and belong to a series
CREATE TABLE books(
    id INTEGER PRIMARY KEY,
    title TEXT,
    year INTEGER,
    series_id INTEGER
);
-- The Characters table has a name, motto and species and belongs to an author
CREATE TABLE characters(
    id INTEGER PRIMARY KEY,
    name TEXT,
    species TEXT,
    motto TEXT,
    author_id INTEGER
);
-- This is a join table
CREATE TABLE character_books(
    id INTEGER PRIMARY KEY,
    character_id INTEGER,
    book_id INTEGER
);