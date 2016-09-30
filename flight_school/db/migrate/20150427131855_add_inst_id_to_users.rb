class AddInstIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :inst_id, :integer
  end
end
