class CityController < ApplicationController
  def index
    @city = City.all
  end

  def new
  end

  def create
  end

  def show
    @city = City.find(params[:id])
    p @city
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
