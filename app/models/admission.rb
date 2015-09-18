class Admission < ActiveRecord::Base
  belongs_to :department
  belongs_to :degree
end
