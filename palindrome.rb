class Palindrome

  def method
    puts "enter something"
    name = gets.chomp!
    len = name.length   
    collection_of_palindrome = []
    split = name.split('',len)
    split_len = split.length
    combination  = split.permutation(split_len).to_a

    combination.each do |x|

      if x == x.reverse
         collection_of_palindrome << x  
      end

    end

    puts "here are the result of palindrome:"    
    collection_of_palindrome.uniq.each do |x|
      puts x.join("")

    end

  end

end

palindrome = Palindrome.new
palindrome.method