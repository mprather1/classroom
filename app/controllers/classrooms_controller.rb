class ClassroomsController < ApplicationController


  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)

    if @classroom.save
      redirect_to classroom_path(@classroom)
    else
      render 'new'
    end
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def update
    @classroom = Classroom.find(params[:id])

    if @classroom.update_attributes(classroom_params)
      redirect_to classroom_path(@classroom)
    else
      render 'edit'
    end
  end

  def delete
    @classroom = Classroom.find(params[:id])
  end

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy
    redirect_to classrooms_path
  end

  private

  def classroom_params
    params.require(:classroom).permit(:title)
  end

  end
