class ChangeEndsAtQuizType < ActiveRecord::Migration[4.2]
  def up
    change_column :quizzy_quizzes, :ends_at, :datetime
  end
  
  def down
    change_column :quizzy_quizzes, :ends_at, :date
  end
end
