module Multiplex
  
  def movie_name
    puts "enter name of movie"
    @movie_name = gets #instance variable
  end

  def movie_type #instance method
    puts "enter the type of movie you are watching"
    @movie_type = gets
  end

  def movie_rating
    puts "enter movie rating out of 10"
    @movie_rating = gets
  end

end

class Movies

  @@movie_watched = 0
  
  include Multiplex

  def self.movie_watched
    @@movie_watched = @@movie_watched + 1
  end

  def movie_output
    puts "Movie-type : #{@movie_type}"
    puts "Movie-name : #{@movie_name}"
    puts "Movie-rating: #{@movie_rating}"
    puts "Number of movie you have watched : #{@@movie_watched}"
  end

  def survey_form
    puts "want to give survey"
    while gets.downcase.chomp! == 'y'
      movie_name
      movie_type
      movie_rating
      Movies.movie_watched
      movie_output
      puts "want to give survey"
    end
  end

  def thank
    puts "Thank-You"
  end

end

movie = Movies.new
movie.survey_form
movie.thank