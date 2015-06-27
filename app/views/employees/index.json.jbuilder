json.array!(@employees) do |employee|
  json.extract! employee, :id, :Firstname, :Lastname, :Address, :City, :Province, :Postalcode, :Country, :Phone, :Email, :Salary, :department_id
  json.url employee_url(employee, format: :json)
end
