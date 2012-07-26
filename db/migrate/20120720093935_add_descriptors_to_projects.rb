class AddDescriptorsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :ProjectDescription, :text
  end
end
