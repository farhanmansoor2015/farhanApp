json.array!(@subjects) do |subject|
  json.extract! subject, :id, :Name, :Credits, :Incharge, :department_id
  json.url subject_url(subject, format: :json)
end
