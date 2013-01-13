class MembersController < ApplicationController

  def show
    @member = Member.find(params[:id])
    @projects = Project.find_all_by_member_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @member }
    end
	end
end 