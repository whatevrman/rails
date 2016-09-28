class AddMed3ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :med3, :boolean
  end
end
