json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :name, :specialization, :dateofbirth, :designation, :qualification, :address, :local, :contact_no, :status, :email
  json.url faculty_url(faculty, format: :json)
end
