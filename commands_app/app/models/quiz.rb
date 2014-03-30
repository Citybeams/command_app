class Quiz < ActiveRecord::Base
  validates_presence_of :quiz_question
  validates_presence_of :correct_answer
end





