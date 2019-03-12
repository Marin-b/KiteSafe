class CreateWeatherConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :weather_conditions do |t|
      t.string :wind_direction
      t.string :wind_speed
      t.string :wave_condition
      t.date :date
      t.references :spot, foreign_key: true

      t.timestamps
    end
  end
end
