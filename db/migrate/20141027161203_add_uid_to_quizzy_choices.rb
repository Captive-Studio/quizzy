class AddUidToQuizzyChoices < ActiveRecord::Migration
  def change
    add_column :quizzy_choices, :uid, :string
  end
end
