module VotesHelper

  def set_votes_attrs
    session[:votes] ||= 5
    @votes = session[:votes].to_i
    @can_vote = @votes > 0
  end

  def decrement_votes
    session[:votes] = session[:votes].to_i - 1
  end

end
