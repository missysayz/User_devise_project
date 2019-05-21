class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :item
      t.string :group
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
