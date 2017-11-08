class MoveQuizzyQuizIdFromQuizzySectionIdToQuizzyQuestions < ActiveRecord::Migration[5.0]
  def up
    Quizzy::Quiz.find_each do |quiz|
      Quizzy::Question.where(quiz: quiz).find_each do |question|
        section = Quizzy::Section.find_or_create_by(name: "#{quiz.name}-section", quizzy_quiz_id: quiz.id)
        question.section_id = section.id
        question.save
      end      
    end
  end

  def down
    Quizzy::Section.find_each do |section|
      Quizzy::Question.where(section_id: section.id).find_each do |question|
        question.quiz_id = section.quiz_id
        question.save
      end
    end
  end
end
