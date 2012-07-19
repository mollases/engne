class Member < ActiveRecord::Base
  attr_accessor :password, :password_digest
  before_save :encrypt_password
  has_many :projects, dependent: :destroy

  validates_confirmation_of :password
	validates_confirmation_of :password, :on => :create, :message => "Can't be blank"
	validates_presence_of :email, :first_name, :last_name, :password
	validates_uniqueness_of :email
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name

  def self.authenticate(email,password)
    member = find_by_email(email)
    if member && member.password_digest == BCrypt::Engine.hash_secret(password,member.password_salt)
      member
    else
      nil
    end
  end
  def encrypt_password
  	if password.present?
  		self.password_salt = BCrypt::Engine.generate_salt
  		self.password_digest = BCrypt::Engine.hash_secret(password,password_salt)
  	end
  end

end
