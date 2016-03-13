class BendersController < ApplicationController
  def new
    @bender = Bender.new()
  end

  def create
    @bender = Bender.new()
    @bender.started_at = Time.now
    @bender.user_id = current_user.id
    if @bender.save!
      save_bender(@bender)
      redirect_to @bender
    else
      render 'new'
    end
  end

  def show
    @bender = Bender.find(params[:id])
    @bender_drinks = Drink.where(bender_id: @bender.id)
  end

  private
    def bender_params
      params.require(:bender).permit(:started_at)
    end

end
