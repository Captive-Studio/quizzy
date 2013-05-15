require 'spec_helper'

describe Question do
  it { should validate_presence_of :text}
  it { should have_many :choices }
  it { should have_many :translations }

end
