class CreateChoicesResponses < ActiveRecord::Migration[4.2]
  def change
    create_table :quizzy_choices_responses, force: true, id: false do |t|
      t.integer :response_id
      t.integer :choice_id
    end
    
    add_index :quizzy_choices_responses, :response_id
    add_index :quizzy_choices_responses, :choice_id
    
  end
end