class RemoveScoreFromAnswers < ActiveRecord::Migration[6.1]
  def change
    remove_column :answers, :score, :integer
  end
end
