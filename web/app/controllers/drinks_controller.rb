class DrinksController < ApplicationController
  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)
    if current_bender
      @drink.bender_id = current_bender.id

      if @drink.save
        save_bender(@drink)
        redirect_to @drink
      else

        render 'new'
      end
    else
      redirect_to new_bender_path
    end

  def show
  end

  def index
  end

  end

  private
    def drink_params
      params.require(:drink).permit(:quantity, :proof, :name, :bender_id)
    end
end
