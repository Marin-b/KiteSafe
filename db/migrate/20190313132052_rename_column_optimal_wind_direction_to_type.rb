class RenameColumnOptimalWindDirectionToType < ActiveRecord::Migration[5.2]
  def change
    rename_column :spots, :optimal_wave_condition, :type
  end
end
