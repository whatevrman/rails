class AddUsernameToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :username, :string
  end
end
