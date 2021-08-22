def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id=1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  #select the name and motto - these are within the characters table
  #find the length of the motto - order by this length
  #To find the longest use desc and limit it to the top one
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  #most prolific means the top species - so limit to one 
  #count all the species using the *
  #species are located in the characters table - then group by the species
  "SELECT species, COUNT(*) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  #draw this one out - we need to join two tables
  #always join using foreign key = primary key
  "SELECT authors.name, subgenres.name FROM authors JOIN series ON series.author_id = authors.id JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  #1. Select the series title - this is in the series table
  #2. Join the series table with the books table to find the foreign key = primary key on series table
  #3. Join again on character books table and this is where youll find the type of species
  #4. group the series by the title and find the count of everything and limit it to the top one
  "SELECT series.title FROM series JOIN books on books.series_id = series.id JOIN character_books ON character_books.book_id = books.id JOIN characters ON character_books.character_id = characters.id WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT(*) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  #counts are always done before the from 
  "SELECT characters.name, COUNT(*) as book_count FROM character_books JOIN characters ON character_books.character_id = characters.id GROUP BY characters.name ORDER BY book_count DESC, characters.name;"
end
