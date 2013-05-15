class TranslateQuestions < ActiveRecord::Migration
  def self.up
    Question.create_translation_table!({
      :text => :string
    }, {
      :migrate_data => true
    })
  end
  def self.down
    Question.drop_translation_table! :migrate_data => true
  end
end
