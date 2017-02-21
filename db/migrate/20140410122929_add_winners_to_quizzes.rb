class AddWinnersToQuizzes < ActiveRecord::Migration[4.2]
  def change
    add_column :quizzy_quizzes, :winners, :text
  end
end
