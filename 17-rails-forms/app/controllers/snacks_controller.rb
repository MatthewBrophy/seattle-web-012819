class SnacksController < ApplicationController
  before_action :set_snack, only: [:show, :edit]

  def index
    @snacks = Snack.all
  end

  def show
    @snack = Snack.find(params[:id])
  end

  def new
    @snack = Snack.new
  end

  def create
    @snack = Snack.new
  end


  def edit
    @snack = Snack.find(params[:id])
  end

  def most_popular
  end

  private

  def set_snack
    @snack = Snack.find(params[:id])
  end

  def snack_params
    # where should I look for params?
    # what should I allow as params?
    # {snack: {name: something, deliciousness: something}}
    params.require(:snack).permit(:name, :deliciousness)
  end

end
