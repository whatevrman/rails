class CreateSchools2 < ActiveRecord::Migration
  def change
    create_table :schools2s do |t|
	  t.string :name, :unique => true, :null => false
	  t.integer :add_id 
	  t.integer :ph_id
	  t.integer :e_id
	  t.integer :faa_id
	  t.string :website
	  t.integer :years
	  t.boolean :tp141, :default => false
	  t.boolean :tp64, :default => false
	  t.integer :admin_id
	  t.integer :admin_ph_id
	  t.integer :emer_id
	  t.integer :emer_ph_id
	  t.boolean :hpp, :default => false
	  t.boolean :hcp, :default => false
	  t.boolean :hcfi, :default => false
	  t.boolean :atp, :default => false
	  t.boolean :hcfii, :default => false
	  t.boolean :hll, :default => false
	  t.boolean :disable, :default => false
	  t.date :dis_date
    end
  end
end
