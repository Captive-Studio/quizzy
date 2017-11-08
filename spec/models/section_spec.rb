require 'rails_helper'

describe Quizzy::Section, type: :model do
  it { should have_many :questions }
end