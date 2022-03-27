class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      belongs_to :arrival_airport
      belongs_to :departure_airport

      t.datetime :start
      t.integer :duration_minutes

      t.timestamps
    end
  end
end
