class CrewMembersController < ApplicationController
  before_action :set_crew_member, only: [:edit, :update, :delete, :show]

  def edit
    @ships = Ship.all
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
    params.require(:crew_member).permit(:name, :position, :posting_number, :ship_id, degree_ids: [], degrees_attributes: [:name])
  end
end
