class CreateQuizResponses < ActiveRecord::Migration[4.2]
  def change
    create_table :quizzy_quiz_responses do |t|
      t.references :quiz
      t.references :country
      t.references :participant
      t.integer :score, :integer, default: 0

      t.timestamps
    end
    add_index :quizzy_quiz_responses, :quiz_id
    add_index :quizzy_quiz_responses, :country_id
    add_index :quizzy_quiz_responses, :participant_id
  end
end
