require 'spec_helper'

describe Subject do
  it { should have_many(:quizzes)}

  it { should validate_presence_of(:subject) }
end





