json.array!(@students) do |student|
  json.extract! student, :id, :Firstname, :Lastname, :Registration, :Nic, :Address, :City, :Province, :District, :Education, :Contact, :Email, :department_id, :admission_id, :degree_id, :subject_id, :faculty_id
  json.url student_url(student, format: :json)
end
