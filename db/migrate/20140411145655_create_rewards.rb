class CreateRewards < ActiveRecord::Migration[4.2]
  def change
    create_table :quizzy_rewards do |t|
      t.string :name
      t.string :image
      t.integer :quiz_response_id

      t.timestamps
    end
  end
end
