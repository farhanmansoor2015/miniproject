class AttMaster < ActiveRecord::Base
  belongs_to :course
  belongs_to :teacherassign
end
