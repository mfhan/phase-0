# Introduction to Inheritance

# I worked on this challenge [by with Lars Johnson ].


# Pseudocode
    def add_student(student)

    Add individual student to the "students" array
    Return a new array containing the new name(s)

    def remove_student(student)
      inspect every student to see if any of the names correspond to "element", which is the name of the student we want to remove
      remove the student whose name corresponds to "element"

    def currently_in_phase
      IF today's date is smaller (=earlier) than the start date of Phase1, respond "Phase 0";
      ELSE IF today's date is smaller than the start date of Phase2 and bigger than Phase1, respond "Phase 1";

      ELSE IF today's date is smaller than the start date of Phase3 and bigger than Phase2, respond "Phase 2";

      ELSE IF today's date is smaller than date of graduation and bigger than Phase3, respond "Phase 3";

    def graduated
      IF today's date is bigger than Phase0 + 126 days,
      return "yes",
      OTHERWISE return "no"



# Initial Solution

class GlobalCohort

  attr_reader :city, :students, :name, :p0

    def initialize (city, students, p0)
      require "date"
      @today = Date.today
      @city = city
      @students = students
      @email = []
      @p0 = Date.parse(p0)
      @p1 = @p0 + 63 #start of Phase 1 = phase 0 + 63 days (9 weeks)
      @p2 = @p0 + 84
      @p3 = @p0 + 105
      @graduation = @p0 + 126 #graduation = phase 0 + 126 days (19 weeks)
      p city
      p students
      p p0
    end

  def create_email
     @students.each do |element|
       @email.push(element + "@dbc.com")
     end
     puts @email
   end

   def num_students
     @num_students = @students.length
     puts @num_students
    end

    def add_student(student)
      @students << student
      @students.flatten!
      p @students
    end

    def remove_student(student)
      @students.each do |element|
        if element == student
          @students.delete(element)
        end
      p @students
      end
    end


    def currently_in_phase
      if @today < @p1
        p "phase0"
      elsif @today > @p1  &&  Date.today <@p2
        p  "phase1"
      elsif @today > @p2  &&  Date.today <@p3
       p  "phase2"
      elsif @today > @p3  &&  @graduation
       p  "phase3"
      end
    end



    def graduated
      if @today > @graduation
        p "yes"
      else
        p "no"
      end
    end

end


class LocalCohort < GlobalCohort

  attr_accessor :students

    def initialize (students)
      @students = students
      @number_of_students = @students.length
      p students
    end
end

chicago = LocalCohort.new(["james", "joe"])
newyork = LocalCohort.new(["samantha", "marie"])
sanfran = LocalCohort.new(["paul","eunice"])

copperheads = GlobalCohort.new(["newyork", "chicago"], chicago.students, "17-08-2015")

copperheads.add_student("Jill")

copperheads.add_student(newyork.students)
copperheads.add_student(sanfran.students)

copperheads.remove_student("sue")

copperheads.currently_in_phase

copperheads.graduated

copperheads.create_email
copperheads.num_students



# Refactored Solution





# # Reflection

# 1. What concepts did you review in this challenge?
# We reviewed the concept of class and the way a class attribute gets inherited by a subclass.

# 2. What is still confusing to you about Ruby?
# A LOT of things; the difference between local and global entities still leave me thinking; inheritance is another trouble spot.

# 3. What are you going to study to get more prepared for Phase 1?
# Class; iteration; iterating through arrays


