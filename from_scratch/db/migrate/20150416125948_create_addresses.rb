class CreateAddresses < ActiveRecord::Migration
  def change_table
      add_column(:addresses, :created_at, :datetime)
      add_column(:addresses, :updated_at, :datetime)
    end
end
