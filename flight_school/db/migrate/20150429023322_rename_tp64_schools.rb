class RenameTp64Schools < ActiveRecord::Migration
  def change
    rename_column :schools, :tp64, :tp61
  end
end
