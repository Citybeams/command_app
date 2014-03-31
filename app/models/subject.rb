# == Schema Information
#
# Table name: subjects
#
#  id         :integer          not null, primary key
#  subject    :string(50)
#  created_at :datetime
#  updated_at :datetime
#

class Subject < ActiveRecord::Base
  has_many :quizzes
  validates_presence_of :subject
end
