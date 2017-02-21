require 'rails_helper'

describe Quizzy::Gift, type: :model do
  it { should validate_presence_of :needed_score }
  it { should validate_presence_of :attachement }
end
