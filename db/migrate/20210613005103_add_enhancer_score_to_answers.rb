class AddEnhancerScoreToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :enhancer_score, :integer
    add_column :answers, :transmuter_score, :integer
    add_column :answers, :emitter_score, :integer
    add_column :answers, :conjurer_score, :integer
    add_column :answers, :manipulator_score, :integer
    add_column :answers, :specialist_score, :integer
  end
end
