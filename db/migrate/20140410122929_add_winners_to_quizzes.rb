class AddWinnersToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :winners, :text
  end
end
