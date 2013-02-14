class AddFinancialsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :total_investment_needed, :integer
    add_column :projects, :due_date, :datetime
    add_column :projects, :return_date, :datetime
    add_column :projects, :percent_return, :integer
  end
end
