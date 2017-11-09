class CreateQuizzySections < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzy_sections do |t|
      t.string :name
      t.references :quiz, index: true, foreign_key: { to_table: :quizzy_quizzes }
      t.text :intro
      t.integer :position

      t.timestamps
    end
  end
end
