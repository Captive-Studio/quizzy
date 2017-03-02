module Quizzy
  class Participant < Quizzy::ApplicationRecord
    validates_presence_of :email
    after_initialize :set_uid, if: :new_record?

    def set_uid
      random_string = SecureRandom.hex
      resultat = Quizzy::Participant.find_by uid: random_string

      resultat.nil? ? self.uid = random_string : set_uid
    end

    def to_param
      uid
    end
  end
end
