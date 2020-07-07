class RemoveTimeFromShows < ActiveRecord::Migration[6.0]
  def change
    remove_column :shows, :time, :integer
  end
end
