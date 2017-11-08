class RemoveColumnQuizzyQuizIdToQuizzyQuestions < ActiveRecord::Migration[5.0]
  def change
    remove_column :quizzy_questions, :quiz_id, :integer
  end
end
