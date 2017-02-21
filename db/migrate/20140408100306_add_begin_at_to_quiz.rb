class AddBeginAtToQuiz < ActiveRecord::Migration[4.2]
  def change
    add_column :quizzy_quizzes, :begin_at, :datetime
  end
end
