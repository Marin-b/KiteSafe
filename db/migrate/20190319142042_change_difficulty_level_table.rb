class ChangeDifficultyLevelTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :difficulty_levels, :minimum_level, :optimal_wind_direction
    add_column :difficulty_levels, :offshore_direction, :string
    add_column :difficulty_levels, :level_0, :integer
    add_column :difficulty_levels, :level_90, :integer
    add_column :difficulty_levels, :level_180, :integer
    add_column :difficulty_levels, :level_170, :integer
  end
end
