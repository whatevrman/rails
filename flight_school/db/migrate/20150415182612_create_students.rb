class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :pid
      t.string :medcert
      t.boolean :med1
      t.boolean :med2
      t.date :meddate
      t.string :desirecert
      t.boolean :approval
      t.integer :ipid
    end
  end
end
