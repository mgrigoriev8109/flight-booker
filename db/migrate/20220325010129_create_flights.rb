class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.belongs_to :arriving_airport
      t.belongs_to :departing_airport

      t.datetime :start
      t.integer :duration_minutes

      t.timestamps
    end
  end
end
