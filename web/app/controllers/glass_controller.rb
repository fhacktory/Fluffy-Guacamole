class GlassController < ApplicationController
  def new 
    @glass = Glass.new
  end

  def create
    @glass = Glass.new(glass_params)
    if @glass.save
      redirect_to @glass
    else
      render 'new'
    end
  end

  private
    def glass_params
      params.require(:glass).permit(:quantity, :proof, :name)
    end
end
