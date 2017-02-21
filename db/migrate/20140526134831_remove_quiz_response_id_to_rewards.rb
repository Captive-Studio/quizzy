class RemoveQuizResponseIdToRewards < ActiveRecord::Migration[4.2]
  def change
    remove_column :quizzy_rewards, :quiz_response_id
  end
end
