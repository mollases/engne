class Project < ActiveRecord::Base
  attr_accessible :title, :estimated_investment_needed, :funds_due_date, :estimated_completion_date
  attr_accessible :member_id, :category_id, :number_of_shares, :why_description, :how_description, :make_public, :estimated_costs
  validates :title, uniqueness: true
  validates_presence_of 	:title, :estimated_investment_needed, :funds_due_date, :estimated_completion_date
  validates_presence_of :member_id, :category_id, :number_of_shares, :why_description, :how_description, :estimated_costs
  belongs_to :category
  belongs_to :member
end