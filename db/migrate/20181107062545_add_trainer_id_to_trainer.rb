class AddTrainerIdToTrainer < ActiveRecord::Migration[5.2]
  def change
     add_column :trainers, :trainer_id, :bigint
  end
end
