class AddWinnersToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzy_quizzes, :winners, :text
  end
end
