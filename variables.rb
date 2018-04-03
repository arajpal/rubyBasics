$branch = "IT"#global variable
class Student#class 
  @@no_of_student = 0#class variable
  def input(id, name, enroll)#method
    @stu_id = id#instance variable
    @stu_name = name
    @stu_enroll = enroll
  end
  def input_global()
    puts "students is in #{$branch} Department"
  end
  def output()
    language = "ruby"#local variable
    puts "student id is #{@stu_id}"
    puts "student name is #{@stu_name}"
    puts "student enrollment number is #{@stu_enroll}"
    puts "#{@stu_name} is working on #{language}"
    defined? language
  end
  def professional_output()
    puts "person id is #{@stu_id}"
    puts "person name is #{@stu_name}"
    puts "person social number is #{@stu_enroll}"
  end
  def total_no_of_students()
    @@no_of_student += 1
    puts "total number of student: #{$branch}"
  end
end
class College
  def facilty_output()
    puts "faculty name is #{$branch}"
  end
end
  stu1 = Student.new#object
  stu1.input(1, "abhay", "0827IT141002")
  stu2 = Student.new
  stu2.input(2, "achal", "0827IT141005")
  stu1.input_global()
  stu1.output()
  stu2.output()
  stu1.total_no_of_students()
  stu2.total_no_of_students()
  stu1.professional_output()
  stu3 = College.new
  stu3.facilty_output()