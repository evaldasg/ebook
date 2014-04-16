class StudentsgroupsController < ApplicationController
  def new
    @discipline = Discipline.find(params[:discipline_id])
    @student = Student.find(params[:student_id])
    if @discipline.individual?
      @students = Student.all
      @group = @student.groups.new(name: @student.last_name, discipline: @discipline,
                 variant: @discipline.variant)
      @studentsgroup = @student.studentsgroups.new
      render "groups/new"
      # @group.students << @student
    # else

    end
  end

 def create
   binding.pry
 end

end
