class CreateAdvices < ActiveRecord::Migration[5.2]
  def change
    create_table :advices do |t|
      t.text :description
      t.boolean :kind
      t.references :spot, foreign_key: true

      t.timestamps
    end
  end
end
