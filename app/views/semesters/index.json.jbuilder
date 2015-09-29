json.array!(@semesters) do |semester|
  json.extract! semester, :id, :semester, :start, :end, :status, :session_id
  json.url semester_url(semester, format: :json)
end
