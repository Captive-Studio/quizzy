class AddColumnSectionToQuizzyQuestions < ActiveRecord::Migration[5.0]
  def change
    add_reference :quizzy_questions, :section, index: true
  end
end
