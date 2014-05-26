class RemoveQuizResponseIdToRewards < ActiveRecord::Migration
  def change
    remove_column :rewards, :quiz_response_id
  end
end
