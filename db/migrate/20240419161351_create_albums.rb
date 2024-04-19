class CreateAlbums < ActiveRecord::Migration[7.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.text :thumbnail_url

      t.timestamps
    end
  end
end
