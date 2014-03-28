require 'spec_helper'

describe Subject do
  it "is a song" do
    expect(5).to eq 5
  end

  it { should have_many(:commands) }
end
end
