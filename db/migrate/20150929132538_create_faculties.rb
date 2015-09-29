class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :firstname
      t.string :lastname
      t.string :specialization
      t.date :dateofbirth
      t.string :designation
      t.string :qualification
      t.string :address
      t.string :local
      t.string :contact
      t.string :status
      t.string :email

      t.timestamps null: false
    end
  end
end
