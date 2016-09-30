class ChangePhoneToUsers < ActiveRecord::Migration
  def change
	change_column :users, :phone, :integer
	change_column :users, :ephone, :integer
  end
end
