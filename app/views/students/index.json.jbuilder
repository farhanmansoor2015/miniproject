json.array!(@students) do |student|
  json.extract! student, :id, :firstname, :lastname, :fname, :rollno, :dob, :contact, :nic, :address, :district, :email, :session_id
  json.url student_url(student, format: :json)
end
