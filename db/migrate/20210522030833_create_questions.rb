class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text  :question_text
      t.integer  :enhancer
      t.integer  :transmuter
      t.integer  :emitter
      t.integer  :conjurer
      t.integer  :manipulator
      t.integer  :specialist
      t.timestamps
    end
  end
end
