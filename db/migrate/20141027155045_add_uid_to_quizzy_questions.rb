class AddUidToQuizzyQuestions < ActiveRecord::Migration[4.2]
  def change
    add_column :quizzy_questions, :uid, :string
  end
end
