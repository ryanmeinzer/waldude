class AddUidToAttendees < ActiveRecord::Migration[6.0]
  def change
    add_column :attendees, :uid, :string
  end
end
