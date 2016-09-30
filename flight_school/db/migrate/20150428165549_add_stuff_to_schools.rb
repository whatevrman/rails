class AddStuffToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :admin, :string
    add_column :schools, :phone, :string
	add_column :schools, :line1, :string
	add_column :schools, :city, :string
	add_column :schools, :state, :string
	add_column :schools, :zip, :string
	add_column :schools, :eperson, :string
	add_column :schools, :ephone, :string
	add_column :schools, :email, :string
    remove_column :schools, :e_id, :integer
	remove_column :schools, :ph_id, :integer
	remove_column :schools, :e_phid, :integer
	remove_column :schools, :admin_id, :integer
	remove_column :schools, :admin_ph_id, :integer
	remove_column :schools, :emer_id, :integer
	remove_column :schools, :add_id, :integer
	remove_column :schools, :emer_ph_id, :integer
  end
end
