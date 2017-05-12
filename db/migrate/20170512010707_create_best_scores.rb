class CreateBestScores < ActiveRecord::Migration[5.1]
  def change
    create_table :best_scores do |t|
      t.string :game
      t.integer :score

      t.timestamps
    end
  end
end
