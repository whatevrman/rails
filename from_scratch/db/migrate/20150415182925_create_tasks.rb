class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :spid
      t.string :end_model
      t.date :end_date
      t.integer :ipid
      t.integer :flnumber
      t.date :fldate
      t.string :hnumber
      t.string :htype
      t.float :dualflight
      t.float :soloflight
      t.float :dualxc
      t.float :soloxc
      t.float :day
      t.float :night
      t.float :xcplan
    end
  end
end
