class CreateArtistsSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :artists_songs do |t|
      t.references :artists, null: false, foreign_key: true
      t.references :songs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
