class Students
  @@no_of_students = 0
  def input(id, nam, enroll)
    @stu_id = id
    @stu_name = nam
    @stu_enroll = enroll
  end
  def output()
    puts "student id is #@stu_id"
    puts "student name is #@stu_name"
    puts "student enrollment number is #@stu_enroll"
  end
  def total_no_of_students()
    @@no_of_students += 1
    puts "Total number of students: #@@no_of_students"
  end
end
stu1 = Students.new
stu2 = Students.new
stu1.input(1, 'abhay' ,'0827IT141002')
stu2.input(2, 'achal' ,'0827IT141005')
stu1.output()
stu2.output()
stu1.total_no_of_students()
stu2.total_no_of_students()