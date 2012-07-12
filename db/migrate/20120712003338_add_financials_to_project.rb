class AddFinancialsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :total_investment_needed, :number
    add_column :projects, :due_date, :datetime
    add_column :projects, :return_date, :datetime
    add_column :projects, :percent_return, :number
  end
end
