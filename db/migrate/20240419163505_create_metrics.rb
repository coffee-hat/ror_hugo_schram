class CreateMetrics < ActiveRecord::Migration[7.1]
  def change
    create_table :metrics do |t|
      t.integer :global_view_count
      t.integer :month_view_count

      t.timestamps
    end
  end
end
