class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.datetime :change_time
      t.string :change

      t.timestamps null: false
    end
  end
end
