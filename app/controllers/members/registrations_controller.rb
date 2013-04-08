class Members::RegistrationsController < Devise::RegistrationsController
	def edit
	end
	def upload
	
		photo = Uploader.save(params[:member_photo])
		render :text => "File has been uploaded successfully"
	end
end 