class RemoveColumnTextFromQuizzyChoices < ActiveRecord::Migration[5.0]
  def change
    remove_column :quizzy_choices, :text
  end
end
