class AssignmentsController < ApplicationController

  before_action :find_user

  def index
  #  @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(assignment_params)

    if @assignment.save
      redirect_to assignment_path(@assignment)
    else
      render 'new'
    end
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def update
    @assignment = Assignment.find(params[:id])

    if @assignment.update_attributes(assignment_params)
      redirect_to assignment_path(@assignment)
    else
      render 'edit'
    end
  end

  def delete
    @assignment = Assignment.find(params[:id])
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    redirect_to assignments_path
  end

  private

  def assignment_params
    params.require(:assignment).permit(:title, :content, :user_id, :classroom_id)
  end

  def find_user
    if params[:user_id]
      @assignments = Assignment.where(user_id: params[:user_id])
    else
      @assignments = Assignment.all
    end
  end
end
