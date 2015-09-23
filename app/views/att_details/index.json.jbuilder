json.array!(@att_details) do |att_detail|
  json.extract! att_detail, :id, :status, :student_id, :att_master_id
  json.url att_detail_url(att_detail, format: :json)
end
