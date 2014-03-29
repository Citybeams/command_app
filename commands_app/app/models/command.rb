class Command < ActiveRecord::Base
  belongs_to :subject
  has_one :quiz
  validates_presence_of :command_question
  validates_presence_of :command_answer
end



