class TranslateChoices < ActiveRecord::Migration
  def self.up
    Quizzy::Choice.create_translation_table!({
      :text => :string
    }, {
      :migrate_data => true
    })
  end
  def self.down
    Quizzy::Choice.drop_translation_table! :migrate_data => true
  end
end
