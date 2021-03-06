class Semester < ActiveRecord::Base
  belongs_to :session
validates :semester, :presence => true
  validates :session, :presence => true
validates :semester, length: {minimum: 6}
validates :status, length: {minimum: 6}
end
