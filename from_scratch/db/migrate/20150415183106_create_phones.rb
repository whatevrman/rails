class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :ph_number
    end
  end
end
