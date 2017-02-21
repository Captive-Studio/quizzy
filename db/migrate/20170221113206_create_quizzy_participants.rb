class CreateQuizzyParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzy_participants do |t|
      t.string :email

      t.timestamps
    end
  end
end
