json.array!(@admissions) do |admission|
  json.extract! admission, :id, :Firstname, :Lastname, :Registration, :Nic, :Address, :City, :Province, :District, :Lastdegree, :department_id, :degree_id
  json.url admission_url(admission, format: :json)
end
