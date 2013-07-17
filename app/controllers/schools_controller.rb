class SchoolsController < ApplicationController
  before_action :setup, only: [:show, :edit, :update, :destroy]

  def new
    @school = School.new
  end

  def create
    @school = School.new(params[:school])
    if @school.save
      flash[:success] = "School successfully created!"
      redirect_to schools_path
    else
      render :new
    end
  end

  def index
    @schools = School.all
  end

  def show
  end

  def edit
  end

  def update
    if @school.update_attributes(params[:school])
      flash[:success] = 'School successfully updated'
      redirect_to schools_path
    else
      render 'edit'
    end
  end

  def destroy
    @school.destroy
    redirect_to schools_path
  end

  private

  def setup
    @school = School.find(params[:id])
  end
end
