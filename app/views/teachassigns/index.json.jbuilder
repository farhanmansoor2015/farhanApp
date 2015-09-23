json.array!(@teachassigns) do |teachassign|
  json.extract! teachassign, :id, :faculty_id, :semester_id, :course_id, :session__id
  json.url teachassign_url(teachassign, format: :json)
end
