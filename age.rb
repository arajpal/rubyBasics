$age = 30
 class Age
   def enter_age
     person_age = 15
     unless person_age >= 20
      puts "he is a student"
    else
      puts "he is a employee"
    end
     if person_age > 10
      case $age
      when 0..2
        puts "little child"
      when 3..7
        puts "child"
      when 8..15
        puts "youth"
      when 16..21
        puts "mature"
      else
        puts "adult"
      end
     end
   end
 end
age=Age.new()
age.enter_age
