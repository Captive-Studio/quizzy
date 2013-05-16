class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.integer :quiz_id
      t.string :attachement
      t.integer :needed_score

      t.timestamps
    end
    add_index :gifts, :quiz_id
  end
end
