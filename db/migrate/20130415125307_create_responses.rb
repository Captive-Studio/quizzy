class CreateResponses < ActiveRecord::Migration
  def change
    create_table :quizzy_responses do |t|
      t.references :question
      t.references :quiz_response

      t.timestamps
    end
    add_index :quizzy_responses, :question_id
    add_index :quizzy_responses, :quiz_response_id
  end
end
