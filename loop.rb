$i = 0
class Table
  def input(num)
    @num = num
    puts "number is #{@num}"
  end
  def two
    while $i < @num do
      $i = $i + 2
      puts "#{$i}"
    end
    puts "multiple of two ends here"
  end
  def three
    i = 0
    begin
      i = i + 3
      puts "#{i}"
    end while i < @num
    puts "multiple of three ends here"
  end
  def four
    i = 0
    until i > @num do
      puts "#{i}"
      i = i + 4
    end
    puts "multiple of four ends here"
  end
  def five
    for i in 0..@num
      if i < 10
        puts "hang"
        redo
      end
      puts "#{i}"
    end
    puts "increment after five"
  end
  def six
    (0..@num).each do |i|
      i = i + 6
      puts "#{i}"
    end
    puts "increment after six"
  end
  def seven
end
abh = Table.new
abh.input(20)
abh.five