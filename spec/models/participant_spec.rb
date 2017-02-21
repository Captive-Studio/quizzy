require 'spec_helper'

module Quizzy
  describe Participant do
    it { should validate_presence_of :email }
  end
end