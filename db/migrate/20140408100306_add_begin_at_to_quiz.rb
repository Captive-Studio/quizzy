class AddBeginAtToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzy_quizzes, :begin_at, :datetime
  end
end
