class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :unique => true, :null => false
      t.string :password, :unique => true, :null => false
      t.string :role, :unique => true, :null => false

      t.timestamps null: false
    end
  end
end
