class CrewMembersController < ApplicationController
  before_action :set_crew_member, only: [:edit, :update, :delete, :show]

  def edit
    @ships = Ship.all
  end

  def new
    @crew_member = CrewMember.new
    @ships = Ship.all
  end

  def create
    crew_member = CrewMember.new(crew_member_params)

    if crew_member.save
      flash[:notice] = 'Crew Member Created'
      redirect to crew_member
    else
      flash[:errors] = crew_member.errors.full_messages
      render :new
    end
  end

  def update
    @crew_member.update(crew_member_params)
    if @crew_member.valid?
      flash[:notice] = 'Crew Member Updated'
      redirect_to @crew_member
    else
      flash[:errors] = @crew_member.errors.full_messages
      redirect_to edit_crew_member_path(@crew_member)
    end
  end

  private
  def set_crew_member
    @crew_member = CrewMember.find(params[:id])
  end

  def crew_member_params
    params.require(:crew_member).permit(:name, :position, :posting_number, :ship_id)
  end
end
