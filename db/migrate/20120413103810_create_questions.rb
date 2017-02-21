class CreateQuestions < ActiveRecord::Migration[4.2]
  def change
    create_table :quizzy_questions do |t|
      t.string :text
      t.integer :position
      t.integer :quiz_id

      t.timestamps
    end
  end
end
