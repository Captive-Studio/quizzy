class ChangeRewardRelation < ActiveRecord::Migration
  def up
    add_column :quizzy_rewards :quiz_id, :integer
    add_column :quizzy_rewards, :participant_id, :integer

    Quizzy::Reward.all.each do |reward|
      reward.quiz_id = reward.quiz_response.quiz_id
      reward.participant_id = reward.quiz_response.participant_id
      reward.save!
    end
  end

  def down
    remove_column :quizzy_rewards, :quiz_id
    remove_column :quizzy_rewards, :participant_id
  end
end
