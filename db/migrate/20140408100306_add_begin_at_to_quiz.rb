class AddBeginAtToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :begin_at, :datetime
  end
end
