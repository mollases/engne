class MembershipsController < Devise::RegistrationsController

	def edit
		@member = current_member
	end
	def new
		@member = current_member
	end
	def show
		
		@member = current_member
	end

end 