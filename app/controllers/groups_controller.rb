class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)
    redirect_to :groups
  end

  def new
    @teachers = Teacher.all
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save
    redirect_to :groups
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to :groups
  end

private
  def group_params
    params.require(:group).permit(:name, :description, :teacher_id, :discipline)
  end
end