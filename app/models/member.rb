class Member < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password_digest
  validates :first_name, :last_name, :password_digest, presence: true
  has_many :projects, dependent: :destroy
end
