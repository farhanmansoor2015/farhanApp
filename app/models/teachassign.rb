class Teachassign < ActiveRecord::Base
  belongs_to :faculty
  belongs_to :semester
  belongs_to :course
  belongs_to :session_
end
