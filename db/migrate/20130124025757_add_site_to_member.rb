class AddSiteToMember < ActiveRecord::Migration
  def change
    add_column :members, :personal_site, :string
    add_column :members, :site2, :string
    add_column :members, :site3, :string
  end
end
