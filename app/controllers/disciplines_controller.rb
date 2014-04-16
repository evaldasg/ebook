class DisciplinesController < ApplicationController
  def index
    @disciplines = Discipline.all
  end

  def edit
    @discipline = Discipline.find(params[:id])
  end

  def new
    @discipline = Discipline.new
  end

  def update
    @discipline = Discipline.find(params[:id])
    @discipline.update(discipline_params)
    redirect_to :disciplines
  end

  def create
    @discipline = Discipline.new(discipline_params)
    @discipline.save
    redirect_to :disciplines
  end

  def destroy
    @discipline = Discipline.find(params[:id])
    @discipline.destroy
    redirect_to :disciplines
  end

private

  def discipline_params
    params.require(:discipline).permit(:name, :klass, :variant, :duration, :speciality, :syllabus, :required, :status)
  end

  def when_changed_status(discipline)
    discipline.students.each do |student|
      sd = student.disciplines
      if discipline.status
        sd << discipline unless sd.include?(discipline)
      else
        sd.delete(discipline)
      end
    end
  end
end
