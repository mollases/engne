class TransactController < ApplicationController
  before_filter :authenticate_member!
  
  def invest
    @project = Project.find(params[:id])
    @category = Category.find(@project.category_id).title
    @member = Member.find(@project.member_id)
  end

  def buy
  end

  def sell
  end
  
  def donate
    @project = Project.find(params[:id])
    @category = Category.find(@project.category_id).title
    @member = Member.find(@project.member_id)
  end

  def submit
    @project = Project.find(params[:id])
    @member = current_member.id
  end  
end
