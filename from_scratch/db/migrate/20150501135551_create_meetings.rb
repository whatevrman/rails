class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
	  
      t.integer :ipid
      t.integer :spid
      t.date :date
      t.time :time
      t.text :remarks
	  t.boolean :read, :default => 'f'
      t.timestamps null: false
    end
  end
end
