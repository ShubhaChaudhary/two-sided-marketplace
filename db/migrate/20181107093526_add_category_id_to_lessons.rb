class AddCategoryIdToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :category_id, :integer
  end
end
