class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.string :image
      t.references :trainer, foreign_key: true

      t.timestamps
    end
  end
end
