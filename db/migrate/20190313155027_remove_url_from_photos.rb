class RemoveUrlFromPhotos < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :url
  end
end
