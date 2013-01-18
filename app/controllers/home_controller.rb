class HomeController < ApplicationController
  def index
    @categories = Category.all
    @buyable		= Project.where(:project_status => Project.PROJECT_STATUS[:in_progress])
    @investable = Project.where(:project_status => Project.PROJECT_STATUS[:public_investors])
  end
end
