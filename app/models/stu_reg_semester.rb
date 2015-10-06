class StuRegSemester < ActiveRecord::Base
  belongs_to :student
  belongs_to :semester
  validates :student, :presence => true
   validates :semester, :presence => true
end
