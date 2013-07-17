class GroupsController < ApplicationController
  before_action :setup, only: [:show, :edit, :update, :destroy]

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      flash[:success] = "Group successfully created!"
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @groups = Group.by_teacher
  end

  def show
  end

  def edit
  end

  def update
    if @group.update_attributes(params[:group])
      flash[:success] = "Group successfully updated."
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @group.destroy
    redirect_to root_path
  end

  private
  def setup
    @group = Group.find(params[:id])
  end
end
