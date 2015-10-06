class Teacherassign < ActiveRecord::Base
  belongs_to :faculty
  belongs_to :session
  belongs_to :semester
  belongs_to :course
   validates :faculty, :presence => true
   validates :session, :presence => true
   validates :semester, :presence => true
   validates :course, :presence => true
end
