class RenameTypeTasks < ActiveRecord::Migration
  def change
	rename_column :requests, :type, :task_type
  end
end
