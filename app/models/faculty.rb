class Faculty < ActiveRecord::Base
  belongs_to :department
  belongs_to :degree
  belongs_to :subject
  belongs_to :Employee
end
