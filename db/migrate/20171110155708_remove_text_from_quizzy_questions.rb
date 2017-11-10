class RemoveTextFromQuizzyQuestions < ActiveRecord::Migration[5.0]
  def change
    remove_column :quizzy_questions, :text
  end
end
