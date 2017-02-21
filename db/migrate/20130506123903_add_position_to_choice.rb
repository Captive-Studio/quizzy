class AddPositionToChoice < ActiveRecord::Migration[4.2]
  def change
    add_column :quizzy_choices, :position, :integer
  end
end
