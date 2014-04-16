class StudentsdisciplinesController < ApplicationController
  def create
    @student = Student.find_by(slug: params[:student_id])

  end
end
