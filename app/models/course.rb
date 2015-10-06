class Course < ActiveRecord::Base
  belongs_to :program
  validates :name, :presence => true
  validates :description, :presence => true
validates :name, length: {minimum: 8}
end
