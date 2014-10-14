class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzy_quizzes do |t|
      t.string :name
      t.string :group
      t.string :image
      t.string :title
      t.boolean :should_register_participant
      t.date :ends_at

      t.timestamps
    end
  end
end
