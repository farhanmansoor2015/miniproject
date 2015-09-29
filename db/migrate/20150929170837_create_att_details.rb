class CreateAttDetails < ActiveRecord::Migration
  def change
    create_table :att_details do |t|
      t.string :status
      t.references :att_master, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
