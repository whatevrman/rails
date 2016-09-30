class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :spid
      t.integer :ipid
      t.string :type
      t.date :date
      t.string :time
      t.string :remarks
	  t.boolean :approval
    end
  end
end
