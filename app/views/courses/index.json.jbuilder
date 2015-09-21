json.array!(@courses) do |course|
  json.extract! course, :id, :coursecode, :name, :description, :objectives, :offersemester, :program_id
  json.url course_url(course, format: :json)
end
