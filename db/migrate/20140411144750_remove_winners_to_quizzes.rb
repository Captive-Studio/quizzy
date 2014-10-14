class RemoveWinnersToQuizzes < ActiveRecord::Migration
  def change
    remove_column :quizzy_quizzes, :winners
  end
end
