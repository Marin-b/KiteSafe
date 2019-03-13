class RemoveDesriptionFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :desription, :text
  end
end
