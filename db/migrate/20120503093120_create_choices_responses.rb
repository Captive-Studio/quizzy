class CreateChoicesResponses < ActiveRecord::Migration
  def change
    create_table :choices_responses, force: true, id: false do |t|
      t.integer :response_id
      t.integer :choice_id
    end
    
    add_index :choices_responses, :response_id
    add_index :choices_responses, :choice_id
    
  end
end