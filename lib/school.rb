class School
  attr_accessor :school, :roster

  def initialize(school)
    # initializes a school with a blank roster
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    #adds student to roster as a value for the key of the grade they are in
    @name = name
    @grade = grade
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    #should take in a grade and list all students in that grade
    roster[grade]
  end

  def sort
    #sort each array of students in roster hash
    sorted_roster = {}
    roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end

end
