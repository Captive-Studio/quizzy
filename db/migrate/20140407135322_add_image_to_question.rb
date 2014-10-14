class AddImageToQuestion < ActiveRecord::Migration
  def change
    add_column :quizzy_questions, :image, :string
  end
end
