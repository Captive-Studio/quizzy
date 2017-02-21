class AddImageToQuestion < ActiveRecord::Migration[4.2]
  def change
    add_column :quizzy_questions, :image, :string
  end
end
