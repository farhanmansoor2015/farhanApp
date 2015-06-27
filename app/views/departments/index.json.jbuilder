json.array!(@departments) do |department|
  json.extract! department, :id, :Name, :Chairman, :Examiner, :Resultmaker, :Classes, :Email, :Contact,:Fax
  json.url department_url(department, format: :json)
end
