require 'spec_helper'

describe Choice do
  it { should validate_presence_of :text }
  it { should have_many :translations }
end
