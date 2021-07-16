class CreateTempAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :temp_answers do |t|
      t.integer :temp_answer
      t.timestamps
    end
  end
end
