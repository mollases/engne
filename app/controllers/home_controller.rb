class HomeController < ApplicationController
  def index
    @categories = Category.all
    @buyable		= Project.find(1)

    #Project.find_all_by_project_status(Project.PROJECT_STATUS[:open_for_sale])
    # @investable		= Project.find_all_by_project_status(Project.PROJECT_STATUS[0])
  end
end
