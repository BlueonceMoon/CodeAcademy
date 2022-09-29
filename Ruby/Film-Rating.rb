# Stores films and their ratings within a hash
# add, update, display and delete entries by responding to the console

movies = {
  Four_Lions: 9.4,
  Parasite: 9.5,
  The_Big_Short: 9
}

puts "What would you like to do? "
choice = gets.chomp

case choice
when "add"
  puts "What is the film's title? "
  title = gets.chomp
  puts "What is the film's rating (1-10)? "
  rating = gets.chomp
  puts "Film and rating has been stored "
  if movies[title.to_sym].nil?
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been added with a rating of #{rating}."
  else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What is the film's title? "
  title = gets.chomp
  if movies[title].nil?
    puts "Film not found"
  else
    puts "Please enter a new rating (1-10) "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when "display"
  movies.each do |film, rate|
    puts "#{film}: #{rate}"
  end
when "delete"
  puts "What film do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
end