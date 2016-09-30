class CreateComics < ActiveRecord::Migration[5.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :pub_year
      t.string :authors
      t.string :image_link

      t.timestamps
    end
  end
end
