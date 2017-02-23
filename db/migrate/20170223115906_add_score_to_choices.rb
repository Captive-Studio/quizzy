class AddScoreToChoices < ActiveRecord::Migration[5.0]
  def change
    add_column :quizzy_choices, :score, :integer, default: 0
  end
end
