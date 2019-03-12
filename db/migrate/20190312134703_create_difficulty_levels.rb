class CreateDifficultyLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :difficulty_levels do |t|
      t.string :optimal_wind_direction
      t.integer :minimum_level
      t.references :spot, foreign_key: true

      t.timestamps
    end
  end
end
