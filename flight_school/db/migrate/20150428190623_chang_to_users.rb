class ChangToUsers < ActiveRecord::Migration
  def change
	change_column :users, :phone, :string
	change_column :users, :ephone, :string
	change_column :schools, :adminphone, :string
	change_column :schools, :phone, :string
	change_column :schools, :ephone, :string
  end
end
