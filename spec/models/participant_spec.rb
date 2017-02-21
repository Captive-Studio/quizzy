require 'rails_helper'

describe Quizzy::Participant, type: :model do
  it { should validate_presence_of :email }
end