class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :description
      t.string :duration
      t.string :programprefix

      t.timestamps null: false
    end
  end
end
