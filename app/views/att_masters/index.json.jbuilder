json.array!(@att_masters) do |att_master|
  json.extract! att_master, :id, :date, :topics, :date_marked, :course_id, :teachassign_id
  json.url att_master_url(att_master, format: :json)
end
