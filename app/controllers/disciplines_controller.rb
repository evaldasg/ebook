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

private

  def discipline_params
    params.require(:discipline).permit(:name, :klass_1, :klass_2, :klass_3, :klass_4, :klass_5, :klass_6, :klass_7, :klass_8)
  end
end
