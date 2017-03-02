class AddUidToParticipants < ActiveRecord::Migration[5.0]
  def change
    add_column :quizzy_participants, :uid, :string, unique: true
  end
end
