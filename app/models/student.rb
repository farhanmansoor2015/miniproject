class Student < ActiveRecord::Base
  belongs_to :session
   validates :rollno, :presence => true
   validates :firstname, :presence => true
   validates :nic, :presence => true
end
