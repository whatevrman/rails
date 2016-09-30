class AddEpidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :e_pid, :integer
  end
end
