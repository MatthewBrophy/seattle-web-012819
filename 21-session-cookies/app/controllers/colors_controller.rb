class ColorsController < ApplicationController
  include VotesHelper
  before_action :set_votes_attrs, only: [:index]
  before_action :set_flash

  def index
    if request.path != colors_path
      redirect_to colors_path
    end
    @colors = Color.includes(:votes).all
    render :index
  end

  private

  def set_flash
    @notice = flash[:notice]
    @error = flash[:error]
  end

end
