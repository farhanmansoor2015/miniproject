class AttMaster < ActiveRecord::Base
  belongs_to :course
  belongs_to :teacherassign
  validates :topics, :presence => true
   validates :teacherassign, :presence => true
validates :topics, length: {minimum: 10}
end
