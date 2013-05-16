require 'spec_helper'

describe Gift do
  it { should validate_presence_of :needed_score }
  it { should validate_presence_of :attachement }
end
