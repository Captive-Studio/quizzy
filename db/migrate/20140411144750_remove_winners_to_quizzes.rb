class RemoveWinnersToQuizzes < ActiveRecord::Migration[4.2]
  def change
    remove_column :quizzy_quizzes, :winners
  end
end
