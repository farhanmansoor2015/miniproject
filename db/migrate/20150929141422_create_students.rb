class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :fname
      t.string :rollno
      t.date :dob
      t.string :contact
      t.string :nic
      t.string :address
      t.string :district
      t.string :email
      t.references :session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
