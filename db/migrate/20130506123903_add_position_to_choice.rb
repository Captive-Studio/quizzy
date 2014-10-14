class AddPositionToChoice < ActiveRecord::Migration
  def change
    add_column :quizzy_choices, :position, :integer
  end
end
