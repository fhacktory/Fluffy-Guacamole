class BendersController < ApplicationController
  def new
    @bender = Bender.new()
  end

  def create
    @bender = Bender.new()
    @bender.started_at = Time.now
    if @bender.save!
      redirect_to @bender
    else
      render 'new'
    end
  end

  def show
  end

  private
    def bender_params
      params.require(:bender).permit(:started_at)
    end

end
