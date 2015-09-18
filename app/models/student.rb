class Student < ActiveRecord::Base
  belongs_to :department
  belongs_to :admission
  belongs_to :degree
  belongs_to :subject
  belongs_to :faculty
end
