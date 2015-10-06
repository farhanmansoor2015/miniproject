class Session < ActiveRecord::Base
  belongs_to :program
  validates :program, :presence => true
  validates :description, :presence => true
validates :status, length: {minimum: 15}
end
