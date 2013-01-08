class AddSpecifiedColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :funds_due_date, :date
    add_column :projects, :estimated_completion_date, :date
    add_column :projects, :estimated_investment_needed, :decimal
    add_column :projects, :number_of_shares, :integer
    add_column :projects, :estimated_costs, :decimal
    add_column :projects, :current_selling_price, :decimal
    add_column :projects, :why_description, :text
    add_column :projects, :how_description, :text
    add_column :projects, :make_public, :binary
  end
end
