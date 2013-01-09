class CreateInvestors < ActiveRecord::Migration
  def up
  	create_table :investors do |t|
  		t.integer :project_id
  		t.integer :member_id
  		t.integer :promised_shares

  		t.timestamps
  	end
  end


  def down
  end
end
