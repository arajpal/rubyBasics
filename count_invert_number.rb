class Invert

  @@count = 0

  def invert_count
    puts "enter input 1"
    input_one = gets.chomp!
    puts "enter input 2"
    input_two = gets.chomp!

    for @number in input_one..input_two
      check_availability
    end
    puts "#{@@count}"
  end
  
  def invert_check
    puts "enter number"
    @number = gets.chomp!
    check_availability
  end  

  def check_reverse
    @rev = @number.reverse()
    exceptional_number = @rev.gsub!(/[69]/, '6' => '9', '9' => '6')

    if @number == @rev || @number == exceptional_number
      @@count = @@count + 1
    else  
    end

  end

  def check_availability
    len = @number.length
    split_number = @number.split(//,len)

    if len > 1
      check = split_number.select{ |num| num =~ /[08169]/ }

      if check.length == len
        check_reverse
      else
      end

    else
      check = split_number.select{ |num| num =~ /[081]/ }

      if check.empty? == false
        @@count = @@count + 1
      else
      end

    end
  end

end
invert = Invert.new
invert.invert_count