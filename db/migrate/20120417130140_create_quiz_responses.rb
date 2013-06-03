class CreateQuizResponses < ActiveRecord::Migration
  def change
    create_table :quiz_responses do |t|
      t.references :quiz
      t.references :country
      t.references :participant
      t.integer :score, :integer, default: 0

      t.timestamps
    end
    add_index :quiz_responses, :quiz_id
    add_index :quiz_responses, :country_id
    add_index :quiz_responses, :participant_id
  end
end
