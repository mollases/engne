class Transact < ActiveRecord::Base
	has_many :projects
	has_many :members
end