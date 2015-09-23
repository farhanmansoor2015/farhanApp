json.array!(@students) do |student|
  json.extract! student, :id, :name, :fname, :rollno, :dateofbirth, :contact, :nic_no, :address, :district, :email, :session__id
  json.url student_url(student, format: :json)
end
