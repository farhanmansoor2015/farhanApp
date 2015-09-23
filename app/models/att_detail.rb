class AttDetail < ActiveRecord::Base
  belongs_to :student
  belongs_to :att_master
end
