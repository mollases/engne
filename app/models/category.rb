class Category < ActiveRecord::Base
  attr_accessible :title
  validates :title, uniqueness: true
end
