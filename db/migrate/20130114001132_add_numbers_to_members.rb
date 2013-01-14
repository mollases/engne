class AddNumbersToMembers < ActiveRecord::Migration
  def change
    add_column :members, :committed_funds, :integer, :default => 0
    add_column :members, :available_funds, :integer, :default => 0
  end
end
