class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    var1 = @student.speciality
    @student.update(student_params)
    var2 = @student.speciality
    unless var1 == var2

    #   if @student.studentsdisciplines.any?
    #     a = @student.studentsdisciplines
    #     b = @student.disciplines
    #     v = b.where(speciality: @student.speciality)
    #     v.each do |d|
    #       a.where(discipline_id: d.id) { |n| n.update(status_b: true)}
    #     end

    #   else
    #     create_required_disciplines(@student)
    #   end
    # else
      @student.studentsdisciplines.each { |d| d.update(status_b: false)}
      create_required_disciplines(@student)
    end
    # var = @student.disciplines.find_by_speciality(@student.speciality)
    redirect_to @student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    create_required_disciplines(@student)
    redirect_to @student
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_url
  end

private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :klass, :speciality)
  end

  def create_required_disciplines(student)
    d = Discipline.find_by_klass(student.klass).find_by_speciality(student.speciality)
    d.each do |discipline|
      # unless discipline.in?(student.disciplines)
      student.disciplines << discipline if discipline.status
    end
  end
end
