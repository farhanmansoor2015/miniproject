class Teacherassign < ActiveRecord::Base
  belongs_to :faculty
  belongs_to :session
  belongs_to :semester
  belongs_to :course
end
