class AddMemberPhotoToMember < ActiveRecord::Migration
  def change
    add_column :members, :member_photo, :string
  end
end
