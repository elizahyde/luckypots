class KeywordsController < ApplicationController

  def admin
    @tags = Tag.all
    @potlucks = Potluck.all
    @keywords = Keyword.all
    @items = Item.all
    @keyword = Keyword.new
  end

  def new
    @keyword = Keyword.new
  end

  def create
    @keyword = Keyword.new(keyword_params)

    if @keyword.save
      redirect_to "/admin"
    else
      render :new
    end
  end

  def keyword_params
    # This allows attributes to be saved to writing (rails 4 change)
    params.require(:keyword).permit(:name)
  end

  def destroy
    @keyword = Keyword.find(params[:id])
    @keyword.destroy

    respond_to do |format|
      format.html { redirect_to "/admin" }
      format.json { head :no_content }
    end
  end
end
