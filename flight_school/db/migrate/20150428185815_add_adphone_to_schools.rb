class AddAdphoneToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :adminphone, :integer
	change_column :schools, :phone, :integer
	change_column :schools, :ephone, :integer
  end
end
