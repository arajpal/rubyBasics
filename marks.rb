# $x = 12#using global variable
class Marks
  @@count = 0
  def data()
    puts "enter your name"
    name = gets
    @name = name
    puts "enter your percentage"
    marks = gets
    @marks = marks.to_i
    puts "Result of #{@name}"
  end
  def performance_ifels
    if @marks > 100
      puts "out of bounds"
    elsif @marks <=100 && @marks>=90  
      puts "excellent"
    elsif @marks < 90 && @marks >=70
      puts "very good"
      elsif @marks <70 && @marks>=50
        puts "good"
      else @marks < 50
        puts "average"
      end
  end
  def result
    if @marks > 33
      puts "PASS!!"
    else
      puts "FAIL!"
    end
  end
  def magic_result
    unless @marks > 33
      puts "PASS with miracle!!"
    else
      puts "PASS!"
    end
  end
  def performance_case
    case @marks
    when 0..30
      puts "below avergae"
    when 30..50
      puts "average"
    when 50..70
      puts "good"
    when 70..90
      puts "very good"
    when 90..100
      puts "excellent"
    else
      puts "check again"
    end
  end
  def initialize
    @@count+=1
    puts "total number of student : #{@@count}"
  end
end
stu = Marks.new
stu.data()
stu.performance_ifels()
stu.performance_case()
stu.result()
stu.magic_result()