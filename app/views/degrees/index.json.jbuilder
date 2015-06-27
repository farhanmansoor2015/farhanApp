json.array!(@degrees) do |degree|
  json.extract! degree, :id, :Name, :Start, :End, :department_id
  json.url degree_url(degree, format: :json)
end
