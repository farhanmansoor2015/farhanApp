json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :Firstname, :Lastname, :Designation, :Nic, :Address, :City, :Province, :District, :Contact, :, :Email, :department_id, :degree_id, :subject_id,
  json.url faculty_url(faculty, format: :json)
end
