class PotlucksController < ApplicationController
  def show
    @potluck = Potluck.find(params[:id])
  end

  def new
    @potluck = Potluck.new
  end

  def create
    @potluck = Potluck.new(params[:recipe])

    if @potluck.save
      redirect_to "/potlucks/index"
    else
      render :new
    end
  end

  def edit
    @potluck = Potluck.find(params[:id])
  end

  def update
    @potluck = Potluck.find(params[:id])

    if @potluck.update_attributes(params[:recipe])
      redirect_to "/potlucks/index"
    else
      render :edit
    end
  end

  def destroy
    @potluck = Potluck.find(params[:id])
    @potluck.destroy
    redirect_to "/potlucks/index"
  end

  def index
    @potlucks = Potluck.all
    @keywords = Keyword.all
  end
end
