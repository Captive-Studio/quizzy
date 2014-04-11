class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :name
      t.string :image
      t.integer :quiz_response_id

      t.timestamps
    end
  end
end
