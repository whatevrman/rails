class RemoveStuffFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :add_id, :integer
	remove_column :users, :e_id, :integer
	remove_column :users, :ph_id, :integer
	remove_column :users, :e_phid, :integer
	add_column :users, :phone, :string
	add_column :users, :line1, :string
	add_column :users, :city, :string
	add_column :users, :state, :string
	add_column :users, :zip, :string
	add_column :users, :eperson, :string
	add_column :users, :ephone, :string
	add_column :users, :email, :string
  end
end
