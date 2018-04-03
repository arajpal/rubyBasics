$movie_id = 0#global variable
module Pvr
  def self.included(films)#including module into the class
    films.extend(Inox)#extend module Inox into class Movies 
  end
  module Inox
    def id#class method
      $movie_id = $movie_id + 1
    end
  end
  def movie_type#instance method
    puts "enter the type of movie you are watching"
    @movie_type = gets
  end
end
class Movies
  def movie_name
    puts "enter name of movie"
    @movie_name = gets#instance variable
  end
  include Pvr
  def movie_output
    puts "Movie-type : #{@movie_type}"
    puts "Movie-name : #{@movie_name}"
    puts "Number of movie you have watched : #{$movie_id}"
  end
  def feedback_form
    puts "want to give feedback"
    @value = gets
    while @value == "y\n"
      movie_name
      movie_type
      Movies.id
      movie_output
      puts "want to give feedback"
      @value = gets
    end
  end
  def thank
    puts "Thank-You"
  end
end
movie = Movies.new
movie.feedback_form
movie.thank