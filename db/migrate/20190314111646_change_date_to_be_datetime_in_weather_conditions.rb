class ChangeDateToBeDatetimeInWeatherConditions < ActiveRecord::Migration[5.2]
  def change
    change_column :weather_conditions, :date, :datetime
  end
end
