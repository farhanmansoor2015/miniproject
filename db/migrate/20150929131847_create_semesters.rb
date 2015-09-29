class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :semester
      t.date :start
      t.date :end
      t.string :status
      t.references :session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
