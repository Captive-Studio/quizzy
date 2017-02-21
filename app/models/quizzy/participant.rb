module Quizzy
  class Participant < Quizzy::ApplicationRecord
    validates_presence_of :email
  end
end
