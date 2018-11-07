class AddCategoryIdToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :category_id, :integer
  end
end
