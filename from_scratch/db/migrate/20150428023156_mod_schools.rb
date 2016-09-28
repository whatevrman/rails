class ModSchools < ActiveRecord::Migration
  def change
    change_column_null(:schools, :name, true)
  end
end
