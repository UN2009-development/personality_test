class AddDecisionTextToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :decision_text, :text
  end
end
