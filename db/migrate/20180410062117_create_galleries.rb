class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :image_title
      t.attachment :image

      t.timestamps
    end
  end
end
