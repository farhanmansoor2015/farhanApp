json.array!(@stu_reg_semesters) do |stu_reg_semester|
  json.extract! stu_reg_semester, :id, :student_id, :semester_id
  json.url stu_reg_semester_url(stu_reg_semester, format: :json)
end
