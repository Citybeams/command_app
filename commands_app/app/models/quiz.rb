class Quiz < ActiveRecord::Base
  belongs_to :command
  validates_presence_of :quiz_question
  validates_presence_of :quiz_answer
end





