json.array!(@programs) do |program|
  json.extract! program, :id, :description, :duration, :programprefix
  json.url program_url(program, format: :json)
end
