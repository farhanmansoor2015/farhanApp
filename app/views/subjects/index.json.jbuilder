json.array!(@subjects) do |subject|
  json.extract! subject, :id, :Name, :Credits, :Incharge,:department_id,:Session,:End
  json.url subject_url(subject, format: :json)
end
