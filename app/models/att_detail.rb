class AttDetail < ActiveRecord::Base
  belongs_to :att_master
  belongs_to :student
end
