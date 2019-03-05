class VotesController < ApplicationController
  include VotesHelper
  before_action :set_votes_attrs, only: [:create]

  def create
    if @can_vote
      @vote = Vote.create(color_id: params[:color_id])
      decrement_votes
      flash[:notice] = "You have voted for ##{@vote.color.hex}"
    else
      flash[:error] = "You have no remaining votes"
    end 
    redirect_to colors_path
  end

end
