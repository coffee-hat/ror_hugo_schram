class AddSongToMetric < ActiveRecord::Migration[7.1]
  def change
    add_reference :metrics, :song, null: false, foreign_key: true
  end
end
