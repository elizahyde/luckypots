class PotlucksController < ApplicationController
  def show
    @potluck = Potluck.find(params[:id])
    @items = Item.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @potluck = Potluck.new
  end

  def create
    @potluck = Potluck.new(potluck_params)

    if @potluck.save
      redirect_to potluck_path(@potluck.id)
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
    @potluck = Potluck.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def potluck_params
    params.require(:potluck).permit(:datetime, :location, :name)
  end
end
