class DynamicController < ApplicationController
  def index
    @user = User.find(params[:id])
    p params
  end

  def new

  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def user
    @user = User.find(params[:id])
  end

end
