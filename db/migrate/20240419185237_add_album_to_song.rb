class AddAlbumToSong < ActiveRecord::Migration[7.1]
  def change
    add_reference :songs, :album, null: false, foreign_key: true
  end
end
