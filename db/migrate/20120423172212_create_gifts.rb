class CreateGifts < ActiveRecord::Migration[4.2]
  def change
    create_table :quizzy_gifts do |t|
      t.integer :quiz_id
      t.string :attachement
      t.integer :needed_score

      t.timestamps
    end
    add_index :quizzy_gifts, :quiz_id
  end
end
