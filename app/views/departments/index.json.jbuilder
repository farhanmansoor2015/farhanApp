json.array!(@departments) do |department|
  json.extract! department, :id, :name, :Chairperson, :Contact, :Email, :Fax
  json.url department_url(department, format: :json)
end
