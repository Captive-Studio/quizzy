class ChangeEndsAtQuizType < ActiveRecord::Migration
  def up
    change_column :quizzy_quizzes, :ends_at, :datetime
  end
  
  def down
    change_column :quizzy_quizzes, :ends_at, :date
  end
end
