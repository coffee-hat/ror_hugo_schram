class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.text :thumbnail_url
      t.text :lyrics

      t.timestamps
    end
  end
end
