class Project < ActiveRecord::Base
  attr_accessible :title, :estimated_investment_needed, :funds_due_date, :estimated_completion_date
  attr_accessible :member_id, :category_id, :number_of_shares, :why_description, :how_description, :make_public, :estimated_costs, :project_state
  validates :title, uniqueness: true
  validates_presence_of 	:title, :estimated_investment_needed, :funds_due_date, :estimated_completion_date
  validates_presence_of :member_id, :category_id, :number_of_shares, :why_description, :how_description, :estimated_costs
  belongs_to :category
  belongs_to :member

  # in progress 				= project is just getting set up on engne
  # under acceptance 		= project is waiting on engne acceptance?
  # private investors 	= project is open to specific investors on engne
  # public investors 		= project is open to all engne investors
  # under construction	= project is closed to engne investors, project is being made
  # open for sale				= project has been made, engne can sell product
  # sold								= project has been sold

   @@Project_status = { 
   	:in_progress => 0,
   	:under_acceptance =>  10,
   	:private_investors =>  20,
   	:public_investors => 30,
   	:under_construction => 40,
   	:open_for_sale => 50,
   	:sold => 60}

  def self.PROJECT_STATUS
    @@Project_status
  end
end