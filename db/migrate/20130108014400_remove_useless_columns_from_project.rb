class RemoveUselessColumnsFromProject < ActiveRecord::Migration
  def up
  	remove_column :projects, :total_investment_needed
  	remove_column :projects, :due_date
  	remove_column :projects, :return_date
  	remove_column :projects, :percent_return
  	remove_column :projects, :ProjectDescription
  end

  def down
  end
end
