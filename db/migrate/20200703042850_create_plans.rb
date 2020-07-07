class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.integer :attendee_id
      t.integer :show_id
      t.integer :location_id

      t.timestamps
    end
  end
end
