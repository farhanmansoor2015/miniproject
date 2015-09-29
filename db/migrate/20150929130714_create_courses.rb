class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :coursecode
      t.string :name
      t.string :description
      t.string :offersemester
      t.string :objectives
      t.references :program, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
