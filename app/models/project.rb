class Project < ActiveRecord::Base
  attr_accessible :title, :total_investment_needed, :due_date, :return_date, :percent_return, :member_id, :category_id
  validates :title, uniqueness: true
end
