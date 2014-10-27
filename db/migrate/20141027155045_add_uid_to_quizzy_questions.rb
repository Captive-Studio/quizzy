class AddUidToQuizzyQuestions < ActiveRecord::Migration
  def change
    add_column :quizzy_questions, :uid, :string
  end
end
