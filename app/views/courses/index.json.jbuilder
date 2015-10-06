json.array!(@courses) do |course|
  json.extract! course, :id, :coursecode, :name, :description, :offersemester, :objectives, :program_id, :start,
  json.url course_url(course, format: :json)
end
