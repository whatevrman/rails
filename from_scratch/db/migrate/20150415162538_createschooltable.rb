class Createschooltable < ActiveRecord::Migration
  def change
    create_table :school do |t|
      t.string :name, :unique => true, :null => false
	  t.integer :add_id 
	  t.integer :ph_id
	  t.integer :e_id
	  t.integer :faa_id
	  t.string :website
	  t.integer :years
	  t.integer :tp141
	  t.integer :tp64
	  t.integer :admin_id
	  t.integer :admin_ph_id
	  t.integer :emer_id
	  t.integer :emer_ph_id
	  t.integer :hpp
	  t.integer :hcp
	  t.integer :hcfi
	  t.integer :atp
	  t.integer :hcfii
	  t.integer :hll
	  t.integer :disable
	  t.date :dis_date
      t.timestamps null: false
	end
  end
end
