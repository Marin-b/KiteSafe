class RemoveWaveConditionFromWeatherConditions < ActiveRecord::Migration[5.2]
  def change
    remove_column :weather_conditions, :wave_condition
  end
end
