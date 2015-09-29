json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :firstname, :lastname, :specialization, :dateofbirth, :designation, :qualification, :address, :local, :contact, :status, :email
  json.url faculty_url(faculty, format: :json)
end
