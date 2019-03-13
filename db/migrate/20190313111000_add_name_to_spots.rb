class AddNameToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :name, :string
  end
end
