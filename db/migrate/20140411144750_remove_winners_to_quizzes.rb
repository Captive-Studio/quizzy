class RemoveWinnersToQuizzes < ActiveRecord::Migration
  def change
    remove_column :quizzes, :winners
  end
end
