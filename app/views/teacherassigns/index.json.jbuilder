json.array!(@teacherassigns) do |teacherassign|
  json.extract! teacherassign, :id, :faculty_id, :session_id, :semester_id, :course_id
  json.url teacherassign_url(teacherassign, format: :json)
end
