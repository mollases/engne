class AddAvatarColumnsToMembers < ActiveRecord::Migration
 class AddAvatarColumsToMembers < ActiveRecord::Migration
   def self.up
   	add_attachment :member, :avatar
   end
   def self.down
   	remove_attachment :member, :avatar
   end 
 end
end
