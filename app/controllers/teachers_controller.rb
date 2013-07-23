class TeachersController < ApplicationController
  before_action :setup, only: [:show, :edit, :update, :destroy]

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(params[:teacher])
    if @teacher.save
      flash[:success] = "Teacher successfully created!"
      redirect_to new_day_classes_path
    else
      render :new
    end
  end

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def edit
  end

  def update
    if @teacher.update_attributes(params[:teacher])
      flash[:success] = 'Teacher successfully updated'
      redirect_to teachers_path
    else
      render 'edit'
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_path
  end

  private

  def setup
    @teacher = Teacher.find(params[:id])
  end
end
