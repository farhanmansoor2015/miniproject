json.array!(@sessions) do |session|
  json.extract! session, :id, :description, :start, :end, :status, :program_id
  json.url session_url(session, format: :json)
end
