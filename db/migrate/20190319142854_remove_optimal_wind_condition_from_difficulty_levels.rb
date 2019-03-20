class RemoveOptimalWindConditionFromDifficultyLevels < ActiveRecord::Migration[5.2]
  def change
    remove_column :difficulty_levels, :optimal_wind_direction
  end
end
