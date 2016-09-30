class RemoveLastNameFromComics < ActiveRecord::Migration[5.0]
  def change
	change_table :comics do |t|
		t.remove :last_name, :reason
		t.rename :first_name, :title
		t.string :image_link, :pub_year, :author
	end
  end
end
