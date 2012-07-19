class Project < ActiveRecord::Base
  attr_accessible :title, :total_investment_needed, :due_date, :return_date, :percent_return, :member_id, :category_id
  validates :title, uniqueness: true
  validates_presence_of :title, :total_investment_needed, :due_date, :return_date, :percent_return, :category_id
	belongs_to :category
  belongs_to :member
end
