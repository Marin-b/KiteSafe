class AddDifficultyLevelToWeatherConditions < ActiveRecord::Migration[5.2]
  def change
    add_column :weather_conditions, :level, :integer
  end
end
