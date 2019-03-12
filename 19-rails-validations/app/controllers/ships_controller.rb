class ShipsController < ApplicationController

  def show
    @ship = Ship.find(params[:id])
    # render :show
  end

end
