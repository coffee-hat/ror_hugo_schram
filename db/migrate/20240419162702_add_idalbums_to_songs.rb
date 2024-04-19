class AddIdalbumsToSongs < ActiveRecord::Migration[7.1]
  def change
    add_reference :songs, :albums, null: false, foreign_key: true
  end
end
