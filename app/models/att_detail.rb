class AttDetail < ActiveRecord::Base
  belongs_to :att_master
  belongs_to :student
  validates :status, :presence => true
   validates :att_master, :presence => true
validates :status, length: {minimum: 15}
end
