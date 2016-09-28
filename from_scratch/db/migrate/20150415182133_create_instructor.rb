class CreateInstructor < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.integer :pid
      t.float :fhours
      t.float :ihours
      t.date :cert_issue
      t.date :cert_exp
      t.float :r44hours
      t.float :r22hours
      t.float :ensthours
      t.date :lastflightcheck
      t.date :enddate
    end
  end
end
