class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :add_id, :integer
    add_column :users, :ph_id, :integer
    add_column :users, :e_id, :integer
    add_column :users, :e_phid, :integer
    add_column :users, :cfi, :boolean, :default => false
    add_column :users, :cfii, :boolean, :default => false
    add_column :users, :r44, :boolean, :default => false
    add_column :users, :r22, :boolean, :default => false
    add_column :users, :enstrom, :boolean, :default => false
    add_column :users, :disable, :boolean, :default => false
    add_column :users, :startdate, :date
    add_column :users, :enddate, :date
    add_column :users, :cert_num, :string
  end
end
