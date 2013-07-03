class GroupsController < ApplicationController
  
  def index
    @groups = Group.order
  end

  def show
    @group = Group.find(params[:id])
  end
end
