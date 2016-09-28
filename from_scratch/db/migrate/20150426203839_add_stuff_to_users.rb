class AddStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :medcert, :string
    add_column :users, :med1, :boolean
    add_column :users, :med2, :boolean
    add_column :users, :meddate, :date
    add_column :users, :desirecert, :string
    add_column :users, :approval, :boolean
    add_column :users, :fhours, :float
    add_column :users, :ihours, :float
    add_column :users, :cert_issue, :date
    add_column :users, :cert_exp, :date
    add_column :users, :r44hours, :float
    add_column :users, :r22hours, :float
    add_column :users, :ensthours, :float
    add_column :users, :latflightcheck, :date
  end
end
