class AddIdmetricsToSongs < ActiveRecord::Migration[7.1]
  def change
    add_reference :songs, :metrics, null: false, foreign_key: true
  end
end
