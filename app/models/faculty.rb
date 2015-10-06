class Faculty < ActiveRecord::Base
  validates :firstname, :presence => true
  validates :specialization, :presence => true
validates :firstname, length: {minimum: 6}
validates :designation, length: {minimum: 6}
end
