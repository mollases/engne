class AddKeysToProject < ActiveRecord::Migration
  def change
    add_column :projects, :member_id, :integer
    add_column :projects, :category_id, :integer
  end
end
