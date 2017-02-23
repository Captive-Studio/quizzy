class AddScoreToChoices < ActiveRecord::Migration[5.0]
  def change
    add_column :quizzy_choices, :score, :integer
  end
end
