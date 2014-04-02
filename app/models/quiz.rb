# == Schema Information
#
# Table name: quizzes
#
#  id             :integer          not null, primary key
#  quiz_question  :string(50)
#  created_at     :datetime
#  updated_at     :datetime
#  correct_answer :integer          not null
#  subject_id     :integer
#

class Quiz < ActiveRecord::Base
  belongs_to :subject
  belongs_to :correct_answer, :class_name => 'Answer', :foreign_key => 'correct_answer'
  has_many :answers
  validates_presence_of :quiz_question
  validates_presence_of :correct_answer
end





