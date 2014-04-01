require 'spec_helper'

describe Quiz do
  it { should have_many(:answers)}

  it { should validate_presence_of(:quiz_question) }

  it { should validate_presence_of(:correct_answer) }

  it { should belong_to(:subject)}

end
