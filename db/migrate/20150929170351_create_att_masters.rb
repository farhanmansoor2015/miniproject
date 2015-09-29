class CreateAttMasters < ActiveRecord::Migration
  def change
    create_table :att_masters do |t|
      t.date :date
      t.string :topics
      t.date :datemarked
      t.references :course, index: true, foreign_key: true
      t.references :teacherassign, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
