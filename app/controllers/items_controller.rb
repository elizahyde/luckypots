class ItemsController < ApplicationController
	def show
    @item = Item.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to :back
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update_attributes(params[:recipe])
      redirect_to "/items/index"
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to "/items/index"
  end

  def index
    @items = Item.all
    @item = Item.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def item_params
    params.require(:item).permit(:name, :potluck_id)
  end
end
