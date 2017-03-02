require 'rails_helper'

describe Quizzy::Participant, type: :model do
  it { should validate_presence_of :email }

  describe 'defini un uid' do
    it 'avec une string aléatoire' do
      participant = Quizzy::Participant.new
      allow(SecureRandom).to receive(:hex).and_return 'dzdk344'
      resultat = participant.set_uid
      expect(participant.uid).to eq 'dzdk344'
    end

    it 'avec une string aléatoire pas utilisée' do
      participant = Quizzy::Participant.new
      participant2 = Quizzy::Participant.new

      allow(SecureRandom).to receive(:hex).and_return 'dzdk344', 'toto'
      allow(Quizzy::Participant).to receive(:find_by).and_return participant2, nil

      resultat = participant.set_uid

      expect(participant.uid).not_to eq 'dzdk344'
      expect(participant.uid).to eq 'toto'
    end
  end
end