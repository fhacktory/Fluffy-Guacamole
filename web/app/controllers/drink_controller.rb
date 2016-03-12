class DrinkController < ApplicationController
  def new 
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to @drink
    else
      render 'new'
    end
  end

  private
    def drink_params
      params.require(:drink).permit(:quantity, :proof, :name)
    end
end
