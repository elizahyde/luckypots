class KeywordsController < ApplicationController
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
end
