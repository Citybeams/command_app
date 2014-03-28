class Command < ActiveRecord::Base
  belongs_to :subject
  has_one :quiz
end
