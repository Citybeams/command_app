class Subject < ActiveRecord::Base
  has_many :commands
  validates_presence_of :subject
end
