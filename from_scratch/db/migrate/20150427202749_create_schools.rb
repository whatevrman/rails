class CreateSchools < ActiveRecord::Migration
  def change_table
    add_column(:schools, :created_at, :datetime)
    add_column(:schools, :updated_at, :datetime)
  end
end
