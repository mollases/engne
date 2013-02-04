class AddFundsGatheredToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :funds_gathered, :decimal, :default => 0
  end
end
