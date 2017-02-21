class AddUidToQuizzyChoices < ActiveRecord::Migration[4.2]
  def change
    add_column :quizzy_choices, :uid, :string
  end
end
