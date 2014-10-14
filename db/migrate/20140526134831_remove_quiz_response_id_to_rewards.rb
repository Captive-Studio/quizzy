class RemoveQuizResponseIdToRewards < ActiveRecord::Migration
  def change
    remove_column :quizzy_rewards, :quiz_response_id
  end
end
