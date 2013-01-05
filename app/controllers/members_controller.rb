class MembersController < ApplicationController
  def new
    @member = Member.new
  end
  def create
    @member = Member.new(params[:member])
    if @member.save
      redirect_to root_url, :notice => "Signed up!"
      session[:member_id] = @member.id
    else
      render "new"
    end
  end
end
