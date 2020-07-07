class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.integer :artist_id
      t.integer :stage_id
      t.integer :time

      t.timestamps
    end
  end
end
