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
    @student.update(student_params)
    redirect_to @student
  end

private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :klass, :speciality)
  end
end
