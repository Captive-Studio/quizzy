class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :question
      t.references :quiz_response

      t.timestamps
    end
    add_index :responses, :question_id
    add_index :responses, :quiz_response_id
  end
end
