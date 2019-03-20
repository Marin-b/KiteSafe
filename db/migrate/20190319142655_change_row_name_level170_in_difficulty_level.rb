class ChangeRowNameLevel170InDifficultyLevel < ActiveRecord::Migration[5.2]
  def change
    rename_column :difficulty_levels, :level_170, :level_270
  end
end
