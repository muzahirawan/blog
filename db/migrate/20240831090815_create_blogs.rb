class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :paragaph_1
      t.string :image_1
      t.string :paragraph_2
      t.string :image_2
      t.string :paragraph_3
      t.string :image
      t.json :data

      t.timestamps
    end
  end
end
