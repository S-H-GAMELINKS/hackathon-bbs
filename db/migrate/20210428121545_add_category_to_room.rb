class AddCategoryToRoom < ActiveRecord::Migration[6.1]
  def change
    add_reference :rooms, :category, null: true, foreign_key: true
  end
end
