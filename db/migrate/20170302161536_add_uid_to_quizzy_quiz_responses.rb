class AddUidToQuizzyQuizResponses < ActiveRecord::Migration[5.0]
  def change
    add_column :quizzy_quiz_responses, :uid, :string, unique: true
  end
end
