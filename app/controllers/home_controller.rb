class HomeController < ApplicationController
  def index
    @categories = Category.all
    @buyable		= Project.where(:project_status => Project.PROJECT_STATUS[:open_for_sale])
    @investable = Project.where(:project_status =>
    	[Project.PROJECT_STATUS[:private_investors],
    	Project.PROJECT_STATUS[:public_investors]
    	])
  end
end
