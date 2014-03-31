class Answer < ActiveRecord::Base
  validates_presence_of :answers
  belongs_to :quiz
end
