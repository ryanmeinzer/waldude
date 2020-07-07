class AddDateTimeToShows < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :date_time, :datetime
  end
end
