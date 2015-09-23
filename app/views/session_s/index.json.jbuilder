json.array!(@session_s) do |session_|
  json.extract! session_, :id, :description, :start, :end, :status, :program_id
  json.url session__url(session_, format: :json)
end
