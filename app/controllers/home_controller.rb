class HomeController < ApplicationController
  def index
    @categories = Category.all
    @buyable		= Project.all
    @investable = Project.all

    # => .find_all_by_project_status(Project.PROJECT_STATUS[:in_progress])
    # @investable		= Project.find_all_by_project_status(Project.PROJECT_STATUS[0])
  end
end
