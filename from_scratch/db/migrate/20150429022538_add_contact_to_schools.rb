class AddContactToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :cperson, :string
    add_column :schools, :cphone, :string
  end
end
