class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :start_datetime
      t.integer :flight_duration_minutes

      t.timestamps
    end
  end
end
